import sqlite3
from openai import OpenAI
import os
import pickle
import sys
from typing import List, Tuple

# Add parent directory to path for imports
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from usage_tracker import tracker

client = OpenAI()

def get_embedding(text, model="text-embedding-3-small"):
    try:
        if not text or not text.strip():
            raise ValueError("Text cannot be empty")
        
        # Track the API call
        tracker.track_embedding_call([text], model)
        
        response = client.embeddings.create(input=text, model=model)
        return response.data[0].embedding
    except Exception as e:
        print(f"Error getting embedding: {e}")
        raise

def get_embeddings_batch(texts: List[str], model="text-embedding-3-small") -> List[List[float]]:
    """Get embeddings for multiple texts in a single API call."""
    try:
        if not texts:
            return []
        
        # Filter out empty texts
        valid_texts = [text for text in texts if text and text.strip()]
        if not valid_texts:
            return []
        
        # Track the API call
        tracker.track_embedding_call(valid_texts, model)
        
        # The batch should already be within token limits from process_texts_batch
        response = client.embeddings.create(input=valid_texts, model=model)
        return [item.embedding for item in response.data]
    except Exception as e:
        print(f"Error getting batch embeddings: {e}")
        raise

def create_db(db_path="embeddings.db"):
    conn = sqlite3.connect(db_path)
    c = conn.cursor()
    c.execute("CREATE TABLE IF NOT EXISTS embeddings (file TEXT, chunk TEXT, embedding BLOB)")
    conn.commit()
    conn.close()

def insert_embedding(file, chunk, embedding, db_path="embeddings.db"):
    conn = sqlite3.connect(db_path)
    c = conn.cursor()
    blob = pickle.dumps(embedding)
    c.execute("INSERT INTO embeddings VALUES (?, ?, ?)", (file, chunk, blob))
    conn.commit()
    conn.close()

def insert_embeddings_batch(items: List[Tuple[str, str, List[float]]], db_path="embeddings.db"):
    """Insert multiple embeddings in a single transaction."""
    conn = sqlite3.connect(db_path)
    c = conn.cursor()
    
    # Prepare data for batch insert
    batch_data = []
    for file, chunk, embedding in items:
        blob = pickle.dumps(embedding)
        batch_data.append((file, chunk, blob))
    
    c.executemany("INSERT INTO embeddings VALUES (?, ?, ?)", batch_data)
    conn.commit()
    conn.close()

def process_texts_batch(texts_with_metadata: List[Tuple[str, str]], db_path="embeddings.db", batch_size=100):
    """Process multiple texts efficiently with batching."""
    total_processed = 0
    for i in range(0, len(texts_with_metadata), batch_size):
        batch = texts_with_metadata[i:i + batch_size]
        texts = [text for text, _ in batch]
        
        # Process texts in smaller groups if needed due to token limits
        current_batch_texts = []
        current_batch_metadata = []
        current_tokens = 0
        
        import tiktoken
        encoding = tiktoken.get_encoding("cl100k_base")
        
        for text, metadata in batch:
            try:
                text_tokens = len(encoding.encode(text, disallowed_special=()))
            except:
                text_tokens = len(text) // 4
            
            print(f"🔍 {metadata}: {len(text)} chars, ~{text_tokens} tokens, batch total: {current_tokens}")
            
            # If this text would exceed batch token limit, process current batch
            if current_tokens + text_tokens > 4000 and current_batch_texts:
                print(f"📦 Processing batch of {len(current_batch_texts)} texts, {current_tokens} tokens")
                embeddings = get_embeddings_batch(current_batch_texts)
                items = [(meta, txt, emb) for (txt, meta), emb in zip(zip(current_batch_texts, current_batch_metadata), embeddings)]
                if items:
                    insert_embeddings_batch(items, db_path)
                    total_processed += len(items)
                current_batch_texts = []
                current_batch_metadata = []
                current_tokens = 0
            
            current_batch_texts.append(text)
            current_batch_metadata.append(metadata)
            current_tokens += text_tokens
        
        # Process remaining texts in batch
        if current_batch_texts:
            print(f"📦 Final batch of {len(current_batch_texts)} texts, {current_tokens} tokens")
            embeddings = get_embeddings_batch(current_batch_texts)
            items = [(meta, txt, emb) for (txt, meta), emb in zip(zip(current_batch_texts, current_batch_metadata), embeddings)]
            if items:
                insert_embeddings_batch(items, db_path)
                total_processed += len(items)