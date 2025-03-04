from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.backends import default_backend
import os
import base64

def generate_key(password: str):
    salt = os.urandom(16)
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,
        salt=salt,
        iterations=100000,
        backend=default_backend()
    )
    key = base64.urlsafe_b64encode(kdf.derive(password.encode()))
    return salt, key

if __name__ == "__main__":
    password = input("Enter a password: ")
    salt, key = generate_key(password)
    print(f"Salt: {base64.urlsafe_b64encode(salt).decode()}")
    print(f"Key: {key.decode()}")