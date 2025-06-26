import sqlite3
from openai import OpenAI
import pickle
import numpy as np
import os

client = OpenAI()

def cosine_similarity(a, b):
    a = np.array(a)
    b = np.array(b)
    return np.dot(a, b) / (np.linalg.norm(a) * np.linalg.norm(b))

def search_embeddings(query, db_path="embeddings.db", top_n=5):
    response = client.embeddings.create(input=query, model="text-embedding-3-small")
    query_embedding = response.data[0].embedding
    conn = sqlite3.connect(db_path)
    c = conn.cursor()
    c.execute("SELECT file, chunk, embedding FROM embeddings")
    results = []
    for file, chunk, blob in c.fetchall():
        embedding = pickle.loads(blob)
        similarity = cosine_similarity(query_embedding, embedding)
        results.append((similarity, file, chunk))
    conn.close()
    results.sort(reverse=True)
    return results[:top_n]