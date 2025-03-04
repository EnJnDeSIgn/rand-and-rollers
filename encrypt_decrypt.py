from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives import padding
from cryptography.hazmat.backends import default_backend
import base64
import os

def encrypt_message(message: str, key: bytes):
    iv = os.urandom(16)
    cipher = Cipher(algorithms.AES(key), modes.CFB(iv), backend=default_backend())
    encryptor = cipher.encryptor()
    padder = padding.PKCS7(128).padder()
    padded_data = padder.update(message.encode()) + padder.finalize()
    encrypted_message = encryptor.update(padded_data) + encryptor.finalize()
    return iv + encrypted_message

def decrypt_message(encrypted_message: bytes, key: bytes):
    iv = encrypted_message[:16]
    cipher = Cipher(algorithms.AES(key), modes.CFB(iv), backend=default_backend())
    decryptor = cipher.decryptor()
    padded_data = decryptor.update(encrypted_message[16:]) + decryptor.finalize()
    unpadder = padding.PKCS7(128).unpadder()
    message = unpadder.update(padded_data) + unpadder.finalize()
    return message.decode()

if __name__ == "__main__":
    choice = input("Do you want to (E)ncrypt or (D)ecrypt a message? ").lower()
    key = base64.urlsafe_b64decode(input("Enter the key: "))

    if choice == 'e':
        message = input("Enter the message to encrypt: ")
        encrypted_message = encrypt_message(message, key)
        print(f"Encrypted Message: {base64.urlsafe_b64encode(encrypted_message).decode()}")
    elif choice == 'd':
        encrypted_message = base64.urlsafe_b64decode(input("Enter the encrypted message: "))
        message = decrypt_message(encrypted_message, key)
        print(f"Decrypted Message: {message}")
    else:
        print("Invalid choice.")