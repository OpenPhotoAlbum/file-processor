import os
import ast
import fnmatch
from typing import List, Tuple, Dict, Any
from text_chunker import TextChunker

class FileProcessor:
    def __init__(self, chunk_size: int = 1000, overlap: int = 200, project_root: str = None):
        # Reduce chunk size to ensure we stay well under token limits
        # ~4 chars per token, 8192 token limit, use 2000 tokens max per chunk = ~800 chars
        safe_chunk_size = min(chunk_size, 800)
        safe_overlap = min(overlap, 150)
        self.chunker = TextChunker(safe_chunk_size, safe_overlap)
        self.ignore_patterns = self._load_ignore_patterns(project_root)
        self.supported_extensions = {
            '.py': self._process_python,
            '.js': self._process_javascript,
            '.ts': self._process_typescript,
            '.jsx': self._process_javascript,
            '.tsx': self._process_typescript,
            '.md': self._process_markdown,
            '.txt': self._process_text,
            '.json': self._process_json,
            '.yaml': self._process_text,
            '.yml': self._process_text,
            '.html': self._process_html,
            '.css': self._process_css,
        }
    
    def _load_ignore_patterns(self, project_root: str = None) -> List[str]:
        """Load ignore patterns from .brainignore file."""
        patterns = []
        
        # Look for .brainignore in project root first, then current directory
        ignore_files = []
        if project_root:
            ignore_files.append(os.path.join(project_root, '.brainignore'))
        ignore_files.append('.brainignore')
        
        for ignore_file in ignore_files:
            if os.path.exists(ignore_file):
                print(f"📝 Loading ignore patterns from: {ignore_file}")
                with open(ignore_file, 'r') as f:
                    for line in f:
                        line = line.strip()
                        if line and not line.startswith('#'):
                            patterns.append(line)
                break
        
        print(f"🚫 Loaded {len(patterns)} ignore patterns")
        return patterns
    
    def _should_ignore(self, filepath: str) -> bool:
        """Check if a file should be ignored based on ignore patterns."""
        # Normalize path for matching
        normalized_path = filepath.replace(os.sep, '/')
        basename = os.path.basename(filepath)
        
        for pattern in self.ignore_patterns:
            # Normalize pattern
            pattern = pattern.replace(os.sep, '/')
            
            # Check if any part of the path matches the pattern
            if pattern.endswith('/'):
                # Directory pattern - check if any directory in path matches
                pattern = pattern.rstrip('/')
                if f'/{pattern}/' in f'/{normalized_path}/' or normalized_path.endswith(f'/{pattern}'):
                    return True
            else:
                # File pattern - check full path and basename
                if fnmatch.fnmatch(normalized_path, pattern) or fnmatch.fnmatch(basename, pattern):
                    return True
                    
                # Also check if the file is inside a directory that matches
                if '/' in pattern:
                    path_parts = normalized_path.split('/')
                    for i in range(len(path_parts)):
                        subpath = '/'.join(path_parts[i:])
                        if fnmatch.fnmatch(subpath, pattern):
                            return True
        
        return False
    
    def process_file(self, filepath: str) -> List[Tuple[str, str]]:
        """
        Process a file and return chunks with metadata.
        Returns list of (chunk_text, metadata) tuples.
        """
        if not os.path.exists(filepath):
            return []
        
        # Check if file should be ignored
        if self._should_ignore(filepath):
            print(f"Ignoring {filepath} (matches ignore pattern)")
            return []
        
        _, ext = os.path.splitext(filepath.lower())
        if ext not in self.supported_extensions:
            # Fallback to text processing for unknown types
            return self._process_text(filepath)
        
        try:
            return self.supported_extensions[ext](filepath)
        except PermissionError as e:
            print(f"⚠️  Permission denied, skipping: {filepath}")
            return []
        except Exception as e:
            print(f"Error processing {filepath}: {e}")
            # Try fallback to text processing
            try:
                return self._process_text(filepath)
            except PermissionError:
                print(f"⚠️  Permission denied, skipping: {filepath}")
                return []
            except Exception as e2:
                print(f"⚠️  Skipping unreadable file {filepath}: {e2}")
                return []
    
    def _process_python(self, filepath: str) -> List[Tuple[str, str]]:
        """Process Python files with AST awareness."""
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Extract structured information
        summary = self._extract_python_structure(content, filepath)
        
        # Chunk the actual code
        chunks = self.chunker.chunk_code(content, filepath)
        
        # Add summary as first chunk if it has content
        if summary:
            chunks.insert(0, (summary, f"{filepath}_summary"))
        
        return chunks
    
    def _process_javascript(self, filepath: str) -> List[Tuple[str, str]]:
        """Process JavaScript/JSX files."""
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Extract basic structure info
        summary = self._extract_js_structure(content, filepath)
        chunks = self.chunker.chunk_code(content, filepath)
        
        if summary:
            chunks.insert(0, (summary, f"{filepath}_summary"))
        
        return chunks
    
    def _process_typescript(self, filepath: str) -> List[Tuple[str, str]]:
        """Process TypeScript/TSX files."""
        return self._process_javascript(filepath)  # Similar structure
    
    def _process_markdown(self, filepath: str) -> List[Tuple[str, str]]:
        """Process Markdown files with header awareness."""
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        return self.chunker.chunk_text(content, filepath)
    
    def _process_text(self, filepath: str) -> List[Tuple[str, str]]:
        """Process plain text files."""
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
        except UnicodeDecodeError:
            # Try with different encoding
            try:
                with open(filepath, 'r', encoding='latin-1') as f:
                    content = f.read()
            except:
                return []
        
        return self.chunker.chunk_text(content, filepath)
    
    def _process_json(self, filepath: str) -> List[Tuple[str, str]]:
        """Process JSON files."""
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # For JSON, we might want to preserve structure better
        return self.chunker.chunk_text(content, filepath)
    
    def _process_html(self, filepath: str) -> List[Tuple[str, str]]:
        """Process HTML files."""
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        return self.chunker.chunk_text(content, filepath)
    
    def _process_css(self, filepath: str) -> List[Tuple[str, str]]:
        """Process CSS files."""
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        return self.chunker.chunk_code(content, filepath)
    
    def _extract_python_structure(self, content: str, filepath: str) -> str:
        """Extract Python file structure using AST."""
        try:
            tree = ast.parse(content)
            summary = [f"File: {filepath}"]
            
            for node in ast.iter_child_nodes(tree):
                if isinstance(node, ast.ClassDef):
                    methods = [n.name for n in ast.iter_child_nodes(node) 
                              if isinstance(n, ast.FunctionDef)]
                    summary.append(f"Class: {node.name}")
                    if methods:
                        summary.append(f"  Methods: {', '.join(methods)}")
                elif isinstance(node, ast.FunctionDef):
                    args = [arg.arg for arg in node.args.args]
                    summary.append(f"Function: {node.name}({', '.join(args)})")
                elif isinstance(node, ast.Import):
                    modules = [alias.name for alias in node.names]
                    summary.append(f"Import: {', '.join(modules)}")
                elif isinstance(node, ast.ImportFrom):
                    module = node.module or ""
                    names = [alias.name for alias in node.names]
                    summary.append(f"From {module} import: {', '.join(names)}")
            
            return '\n'.join(summary)
        except:
            return ""
    
    def _extract_js_structure(self, content: str, filepath: str) -> str:
        """Extract JavaScript structure using regex patterns."""
        import re
        
        summary = [f"File: {filepath}"]
        
        # Find function declarations
        func_pattern = r'function\s+(\w+)\s*\('
        functions = re.findall(func_pattern, content)
        if functions:
            summary.append(f"Functions: {', '.join(functions)}")
        
        # Find arrow functions assigned to variables
        arrow_pattern = r'(?:const|let|var)\s+(\w+)\s*=\s*\([^)]*\)\s*=>'
        arrow_funcs = re.findall(arrow_pattern, content)
        if arrow_funcs:
            summary.append(f"Arrow Functions: {', '.join(arrow_funcs)}")
        
        # Find class declarations
        class_pattern = r'class\s+(\w+)'
        classes = re.findall(class_pattern, content)
        if classes:
            summary.append(f"Classes: {', '.join(classes)}")
        
        # Find exports
        export_pattern = r'export\s+(?:default\s+)?(?:class|function|const|let|var)?\s*(\w+)'
        exports = re.findall(export_pattern, content)
        if exports:
            summary.append(f"Exports: {', '.join(exports)}")
        
        return '\n'.join(summary) if len(summary) > 1 else ""
    
    def process_directory(self, directory_path: str, recursive: bool = True) -> List[Tuple[str, str]]:
        """Process all supported files in a directory."""
        all_chunks = []
        
        if recursive:
            for root, dirs, files in os.walk(directory_path):
                # Skip directories that match ignore patterns
                dirs[:] = [d for d in dirs if not self._should_ignore(os.path.join(root, d)) and not d.startswith('.')]
                
                for file in files:
                    if not file.startswith('.'):
                        filepath = os.path.join(root, file)
                        if not self._should_ignore(filepath):
                            chunks = self.process_file(filepath)
                            all_chunks.extend(chunks)
        else:
            for file in os.listdir(directory_path):
                if not file.startswith('.') and os.path.isfile(os.path.join(directory_path, file)):
                    filepath = os.path.join(directory_path, file)
                    chunks = self.process_file(filepath)
                    all_chunks.extend(chunks)
        
        return all_chunks