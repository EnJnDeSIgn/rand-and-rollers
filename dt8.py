import random
import json
import os
import hashlib
import base64
from cryptography.fernet import Fernet

# Initialize groups (your existing groups)
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

def get_seed_from_salt(salt):
    # Convert salt bytes to an integer
    return int(hashlib.sha256(salt).hexdigest(), 16)

def get_symbols_from_salt(salt):
    symbols = []
    for byte in salt:
        group_index = byte % len(groups)
        symbol_index = byte % len(groups[group_index])
        symbol = groups[group_index][symbol_index]
        symbols.append(symbol)
    return symbols

def derive_key_from_salt(salt):
    key = hashlib.sha256(salt).digest()
    return base64.urlsafe_b64encode(key)

def generate_password(existing_passwords, salt_symbols):
    # Use the salt_symbols to influence password generation
    while True:
        result_string = ""
        total = 0
        add_or_subtract = random.choice([1, -1])
        runs = random.choice(range(35, 56))

        for i in range(runs):
            selected_group = random.randint(0, len(groups) - 1)
            selected_number = random.randint(0, 4)

            element = groups[selected_group][selected_number].strip()

            # Occasionally insert a symbol from salt_symbols
            if i % 10 == 0 and i // 10 < len(salt_symbols):
                element = salt_symbols[i // 10]

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
            existing_passwords.add(result_string)
            return result_string

def encrypt_message(message, salt):
    # Seed the random number generator with the salt-derived seed
    seed = get_seed_from_salt(salt)
    random.seed(seed)

    salt_symbols = get_symbols_from_salt(salt)

    password_char_pairs = []
    existing_passwords = set()
    passwords = []

    for idx, char in enumerate(message):
        password = generate_password(existing_passwords, salt_symbols)
        passwords.append(password)
        password_char_pairs.append((password, char))

    encrypted_message = ' '.join(passwords)
    return encrypted_message, password_char_pairs

def decrypt_message(encrypted_message, salt, password_char_pairs):
    # Seed the random number generator with the salt-derived seed
    seed = get_seed_from_salt(salt)
    random.seed(seed)

    salt_symbols = get_symbols_from_salt(salt)

    existing_passwords = set()
    regenerated_passwords = []
    decrypted_chars = []

    encrypted_passwords = encrypted_message.split(' ')

    for idx in range(len(encrypted_passwords)):
        password = generate_password(existing_passwords, salt_symbols)
        existing_passwords.add(password)
        regenerated_passwords.append(password)

    # Now map regenerated passwords to encrypted passwords to get the characters
    password_char_dict = dict(password_char_pairs)
    for idx, password in enumerate(encrypted_passwords):
        if password == regenerated_passwords[idx]:
            # Retrieve the character based on the password
            char = password_char_dict.get(password, '?')
            decrypted_chars.append(char)
        else:
            decrypted_chars.append('?')

    decrypted_message = ''.join(decrypted_chars)
    return decrypted_message

def main():
    choice = input("Do you want to (E)ncrypt or (D)ecrypt a message? ").strip().upper()

    if choice == 'E':
        message = input("Enter the message to encrypt: ")

        # Generate a random salt
        salt = os.urandom(1000)

        # Encrypt the message
        encrypted_message, password_char_pairs = encrypt_message(message, salt)
        print(f"\nEncrypted Message:\n{encrypted_message}\n")

        # Generate encryption key for mapping data
        key = derive_key_from_salt(salt)
        fernet = Fernet(key)

        # Serialize and encrypt the mapping data
        mapping_json = json.dumps(password_char_pairs)
        mapping_bytes = mapping_json.encode('utf-8')
        encrypted_mapping = fernet.encrypt(mapping_bytes)
        mapping_length = len(encrypted_mapping)

        # Prepare data to write to salt.dat
        salt_data = salt + mapping_length.to_bytes(4, byteorder='big') + encrypted_mapping

        # Save the combined data to salt.dat
        with open('salt.dat', 'wb') as f:
            f.write(salt_data)

        print("Salt and encrypted mapping data combined and saved to 'salt.dat'.")
        print("You can now run the program again to decrypt the message.")

    elif choice == 'D':
        encrypted_message = input("Enter the encrypted message: ")

        # Load the combined salt and encrypted mapping data from salt.dat
        try:
            with open('salt.dat', 'rb') as f:
                salt = f.read(1000)
                mapping_length_bytes = f.read(4)
                mapping_length = int.from_bytes(mapping_length_bytes, byteorder='big')
                encrypted_mapping = f.read(mapping_length)
        except FileNotFoundError:
            print("Salt file not found. Cannot decrypt the message.")
            return
        except Exception as e:
            print(f"Error loading salt and mapping data: {e}")
            return

        # Generate decryption key for mapping data
        key = derive_key_from_salt(salt)
        fernet = Fernet(key)

        # Decrypt the mapping data
        try:
            mapping_bytes = fernet.decrypt(encrypted_mapping)
            mapping_json = mapping_bytes.decode('utf-8')
            password_char_pairs = json.loads(mapping_json)
        except Exception as e:
            print(f"Error decrypting mapping data: {e}")
            return

        # Decrypt the message
        decrypted_message = decrypt_message(encrypted_message, salt, password_char_pairs)
        print(f"\nDecrypted Message:\n{decrypted_message}\n")

        # Verify if decryption is successful
        if decrypted_message is not None:
            print("Decryption completed.")
        else:
            print("Decryption failed due to mismatched data.")

    else:
        print("Invalid choice. Please select 'E' to encrypt or 'D' to decrypt.")

if __name__ == "__main__":
    main()