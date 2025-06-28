import os
import ast

def summarize_file(filepath):
    with open(filepath, 'r') as f:
        tree = ast.parse(f.read())
    summary = []
    for node in ast.iter_child_nodes(tree):
        if isinstance(node, ast.ClassDef):
            summary.append(f"Class: {node.name}")
        elif isinstance(node, ast.FunctionDef):
            summary.append(f"Function: {node.name}")
    return summary

def generate_module_claude_md(module_path):
    claude_md = []
    for dirpath, _, filenames in os.walk(module_path):
        for filename in filenames:
            if filename.endswith(".py"):
                filepath = os.path.join(dirpath, filename)
                summary = summarize_file(filepath)
                if summary:
                    claude_md.append(f"## File: {filepath}")
                    claude_md.append("\n".join(summary))
    with open(os.path.join(module_path, "CLAUDE.md"), 'w') as f:
        f.write("\n".join(claude_md))
