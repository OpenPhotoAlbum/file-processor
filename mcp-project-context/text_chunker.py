import re
from typing import List, Tuple

class TextChunker:
    def __init__(self, chunk_size: int = 1000, overlap: int = 200):
        self.chunk_size = chunk_size
        self.overlap = overlap
    
    def chunk_text(self, text: str, source_info: str = "") -> List[Tuple[str, str]]:
        """
        Split text into overlapping chunks.
        Returns list of (chunk_text, metadata) tuples.
        """
        if len(text) <= self.chunk_size:
            return [(text, source_info)]
        
        chunks = []
        start = 0
        chunk_num = 0
        
        while start < len(text):
            end = start + self.chunk_size
            
            # Try to break at sentence boundaries
            if end < len(text):
                # Look for sentence endings within the last 200 chars
                sentence_end = self._find_sentence_boundary(text, max(start, end - 200), end)
                if sentence_end > start:
                    end = sentence_end
            
            chunk = text[start:end].strip()
            if chunk:
                metadata = f"{source_info}_chunk_{chunk_num}" if source_info else f"chunk_{chunk_num}"
                chunks.append((chunk, metadata))
                chunk_num += 1
            
            # Move start position with overlap
            start = max(start + 1, end - self.overlap)
            
        return chunks
    
    def _find_sentence_boundary(self, text: str, start: int, end: int) -> int:
        """Find the best sentence boundary within the range."""
        # Look for sentence endings
        sentence_endings = r'[.!?]\s+'
        matches = list(re.finditer(sentence_endings, text[start:end]))
        
        if matches:
            # Take the last sentence ending
            return start + matches[-1].end()
        
        # Fallback to paragraph breaks
        paragraph_breaks = r'\n\s*\n'
        matches = list(re.finditer(paragraph_breaks, text[start:end]))
        if matches:
            return start + matches[-1].end()
        
        # Fallback to line breaks
        line_breaks = r'\n'
        matches = list(re.finditer(line_breaks, text[start:end]))
        if matches:
            return start + matches[-1].end()
        
        return end

    def chunk_code(self, code: str, source_info: str = "") -> List[Tuple[str, str]]:
        """
        Chunk code files with awareness of code structure.
        """
        # For code, try to break at function/class boundaries
        lines = code.split('\n')
        chunks = []
        current_chunk = []
        current_size = 0
        chunk_num = 0
        
        for line in lines:
            line_size = len(line) + 1  # +1 for newline
            
            # Check if this line starts a new function/class
            is_function_start = bool(re.match(r'^\s*(def|class|function|const|let|var)\s+', line))
            
            # If adding this line would exceed chunk size and we have content
            if current_size + line_size > self.chunk_size and current_chunk:
                # Save current chunk
                chunk_text = '\n'.join(current_chunk)
                metadata = f"{source_info}_chunk_{chunk_num}" if source_info else f"chunk_{chunk_num}"
                chunks.append((chunk_text, metadata))
                chunk_num += 1
                
                # Start new chunk with overlap
                if is_function_start:
                    current_chunk = [line]
                    current_size = line_size
                else:
                    # Keep some overlap from previous chunk
                    overlap_lines = current_chunk[-5:] if len(current_chunk) > 5 else current_chunk
                    current_chunk = overlap_lines + [line]
                    current_size = sum(len(l) + 1 for l in current_chunk)
            else:
                current_chunk.append(line)
                current_size += line_size
        
        # Add final chunk
        if current_chunk:
            chunk_text = '\n'.join(current_chunk)
            metadata = f"{source_info}_chunk_{chunk_num}" if source_info else f"chunk_{chunk_num}"
            chunks.append((chunk_text, metadata))
        
        return chunks