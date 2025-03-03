import random
import base64
import hashlib
import os
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.fernet import Fernet

# Your existing groups and generate_password() function
groups = [
    ["4", "+", "5", "8", "a"],
    ["p", "4", "r", "/", "h"],
    ["J", "3", "%", "1", "|"],
    ["7", "t", "=", "@", "x"],
    ["!", "&", "I", "9", " "],
    ["#", "3", "L", "3", "A"],
    ["3", "/", "c", "R", "0"],
    ["y", "9", " ", "=", "V"],
    ["j", "6", "u", "5", "0"],
    ["7", ".", "3", "1", "P"],
    ["4", "z", "U", "-", "6"],
    ["5", "K", "T", "v", "8"],
    ["9", "M", "<", "2", "N"],
    ["5", "5", "d", "!", "3"],
    ["W", "b", "9", "6", "&"],
    [",", "C", "X", ",", "B"],
    ["#", "$", "H", "8", "2"],
    ["$", "7", "2", "8", "1"],
    ["S", "9", "*", "o", "6"],
    ["6", "Z", " ", "7", "0"],
    ["5", "1", "8", "2", "2"],
    ["w", "7", "%", "G", "F"],
    ["E", "0", "k", "O", "1"],
    ["4", "9", "*", "0", "3"],
    [">", "2", "5", "l", "6"],
    ["|", "4", "1", "1", "0"],
    ["Y", "Q", "4", "+", ">"],
    ["D", "g", "@", "<", "f"],
    ["?", "8", "4", "n", "7"],
    ["4", "6", "q", ".", "i"],
    ["-", "9", "s", "8", "m"],
    ["e", "0", "?", "7", "2"]
]

def generate_password():
    existing_passwords = set()
    while True:
        result_string = ""
        total = 0
        add_or_subtract = random.choice([1, -1])
        runs = random.choice(range(35, 56))  # Adjusted for variety

        for _ in range(runs):
            selected_group = random.randint(0, len(groups) - 1)
            selected_number = random.randint(0, 4)

            element = groups[selected_group][selected_number].strip()

            try:
                number = int(element)
                total += add_or_subtract * abs(number)
            except ValueError:
                if total != 0:
                    result_string += str(abs(total))
                    total = 0
                result_string += element
                add_or_subtract = random.choice([1, -1])

        if total != 0:
            result_string += str(abs(total))

        if result_string not in existing_passwords:
            return result_string

def derive_key_from_password(password, salt):
    """
    Derives a cryptographic key from the provided password and salt.
    """
    password_bytes = password.encode('utf-8')

    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,  # Fernet requires a 32-byte key
        salt=salt,
        iterations=100_000,
    )
    key = kdf.derive(password_bytes)
    key = base64.urlsafe_b64encode(key)
    return key

def encrypt_message(message, key):
    fernet = Fernet(key)
    encrypted_message = fernet.encrypt(message.encode('utf-8'))
    return encrypted_message

def decrypt_message(encrypted_message, key):
    fernet = Fernet(key)
    decrypted_message = fernet.decrypt(encrypted_message).decode('utf-8')
    return decrypted_message

def save_encrypted_message(encrypted_message, filename):
    with open(filename, 'wb') as file:
        file.write(encrypted_message)

def load_encrypted_message(filename):
    with open(filename, 'rb') as file:
        encrypted_message = file.read()
    return encrypted_message

def save_salt(salt, filename):
    with open(filename, 'wb') as file:
        file.write(salt)

def load_salt(filename):
    with open(filename, 'rb') as file:
        salt = file.read()
    return salt

def main():
    choice = input("Do you want to (E)ncrypt or (D)ecrypt a message? ").strip().upper()

    if choice == 'E':
        message = input("Enter the message to encrypt: ")

        # Generate a password using your custom function
        password = generate_password()
        print(f"\nGenerated Password:\n{password}\n")
        print("Please store this password securely; you'll need it to decrypt the message.")

        # Generate a random salt
        salt = os.urandom(64)
        try:
            # Derive key from password and salt
            key = derive_key_from_password(password, salt)

            # Encrypt the message
            encrypted_message = encrypt_message(message, key)
        except Exception as e:
            print(f"An error occurred during encryption: {e}")
            return

        # Save the encrypted message and salt
        message_filename = 'encrypted_message.dat'
        salt_filename = 'salt.dat'

        save_encrypted_message(encrypted_message, message_filename)
        save_salt(salt, salt_filename)

        print(f"Encrypted message saved to '{message_filename}'")
        print(f"Salt saved to '{salt_filename}'")

    elif choice == 'D':
        message_filename = 'encrypted_message.dat'
        salt_filename = 'salt.dat'

        # Load the encrypted message and salt
        try:
            encrypted_message = load_encrypted_message(message_filename)
            salt = load_salt(salt_filename)
        except FileNotFoundError:
            print("Encrypted message or salt file not found.")
            return

        # Prompt user for the password
        password = input("Enter the password to decrypt the message: ")

        # Derive key from password and salt
        key = derive_key_from_password(password, salt)

        # Decrypt the message
        try:
            decrypted_message = decrypt_message(encrypted_message, key)
            print(f"\nDecrypted Message:\n{decrypted_message}\n")
        except Exception:
            print("Failed to decrypt the message. The password may be incorrect.")

    else:
        print("Invalid choice. Please select 'E' to encrypt or 'D' to decrypt.")

if __name__ == "__main__":
    main()