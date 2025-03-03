import random

# Initialize groups
groups = [
    ["4", "+", "5", "8", "a"],  # 5 +
    ["p", "4", "r", "/", "h"],  # 10 /
    ["J", "3", "%", "1", "|"],  # 15 % |
    ["7", "t", "=", "@", "x"],  # 20 = @
    ["!", "&", "I", "9", " "],  # 25 ! &
    ["#", "3", "L", "3", "A"],  # 30 #
    ["3", "/", "c", "R", "0"],  # 35 / 2
    ["y", "9", " ", "=", "V"],  # 40 = 2
    ["j", "6", "u", "5", "0"],  # 45
    ["7", ".", "3", "1", "P"],  # 50 . .
    ["4", "z", "U", "-", "6"],  # 55 -
    ["5", "K", "T", "v", "8"],  # 60
    ["9", "M", "<", "2", "N"],  # 65 <
    ["5", "5", "d", "!", "3"],  # 70 ! 2
    ["W", "b", "9", "6", "&"],  # 75 & 2
    [",", "C", "X", ",", "B"],  # 80 , ,
    ["#", "$", "H", "8", "2"],  # 85 # $ 2
    ["$", "7", "2", "8", "1"],  # 90 $ 2.
    ["S", "9", "*", "o", "6"],  # 95 *
    ["6", "Z", " ", "7", "0"],  # 100 ?
    ["5", "1", "8", "2", "2"],  # 105
    ["w", "7", "%", "G", "F"],  # 110 % 2
    ["E", "0", "k", "O", "1"],  # 115
    ["4", "9", "*", "0", "3"],  # 120 * 2
    [">", "2", "5", "l", "6"],  # 125 >
    ["|", "4", "1", "1", "0"],  # 130 | - 2 2.
    ["Y", "Q", "4", "+", ">"],  # 135 + > 2 2.
    ["D", "g", "@", "<", "f"],  # 140 @ < 2 2.
    ["?", "8", "4", "n", "7"],  # 145 ? 2.
    ["4", "6", "q", ".", "i"],  # 150
    ["-", "9", "s", "8", "m"],  # 155
    ["e", "0", "?", "7", "2"]
]

def generate_password(existing_passwords):
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

def encrypt_message(message):
    password_char_pairs = []
    existing_passwords = set()
    passwords = []

    for idx, char in enumerate(message):
        password = generate_password(existing_passwords)
        existing_passwords.add(password)
        passwords.append(password)
        password_char_pairs.append((password, char))

    encrypted_message = ' '.join(passwords)
    return encrypted_message, password_char_pairs

def decrypt_message(encrypted_message, password_char_pairs):
    decrypted_chars = []
    encrypted_passwords = encrypted_message.split(' ')

    if len(encrypted_passwords) != len(password_char_pairs):
        print("Error: Mismatch in encrypted data.")
        return None

    for idx, password in enumerate(encrypted_passwords):
        stored_password, char = password_char_pairs[idx]
        if password == stored_password:
            decrypted_chars.append(char)
        else:
            decrypted_chars.append('?')  # Indicate an error

    decrypted_message = ''.join(decrypted_chars)
    return decrypted_message

def main():
    message = input("Enter the message to encrypt: ")

    # Encrypt the message
    encrypted_message, password_char_pairs = encrypt_message(message)
    print(f"\nEncrypted Message:\n{encrypted_message}\n")

    # Decrypt the message
    decrypted_message = decrypt_message(encrypted_message, password_char_pairs)
    print(f"Decrypted Message:\n{decrypted_message}\n")

    # Verify if decryption is successful
    if message == decrypted_message:
        print("Decryption successful!")
    else:
        print("Decryption failed.")

if __name__ == "__main__":
    main()