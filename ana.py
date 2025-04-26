import ast

def analyze_code(code):
    try:
        ast.parse(code)
        return "Code is syntactically correct."
    except SyntaxError as e:
        return f"Syntax Error: {e}"