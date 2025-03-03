import random

# Initialize groups (your original groups variable)
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
        add_or_subtract = random.choice([1, -1])  # Initial random choice for addition or subtraction
        runs = random.choice([54, 46, 49, 48, 36, 39, 47, 53, 51, 38,
                              37, 42, 43, 35, 50, 41, 52, 55, 45, 44,
                              40])

        for _ in range(runs):
            # Randomly select a group
            selected_group = random.randint(0, len(groups) - 1)
            # Randomly select a number from the chosen group
            selected_number = random.randint(0, 4)

            element = groups[selected_group][selected_number].strip()

            # Check if the element is a number or symbol/letter
            try:
                number = int(element)
                # Element is a number
                total += add_or_subtract * abs(number)
            except ValueError:
                # Element is a symbol/letter
                if total != 0:
                    result_string += str(abs(total))  # Ensure total is positive
                    total = 0
                result_string += element

                # Randomly decide whether the next operation will be addition or subtraction
                add_or_subtract = random.choice([1, -1])

        # Append any remaining total to the result string
        if total != 0:
            result_string += str(abs(total))  # Ensure total is positive

        # Ensure password is unique
        if result_string not in existing_passwords:
            return result_string

def encrypt_message(message):
    char_to_password = {}
    password_to_char = {}
    encrypted_passwords = []
    existing_passwords = set()

    for char in message:
        if char in char_to_password:
            password = char_to_password[char]
        else:
            # Generate a unique password for the character
            password = generate_password(existing_passwords)
            existing_passwords.add(password)
            char_to_password[char] = password
            password_to_char[password] = char

        encrypted_passwords.append(password)

    # Use a delimiter (e.g., space) to separate passwords
    encrypted_message = ' '.join(encrypted_passwords)
    return encrypted_message, char_to_password, password_to_char

def decrypt_message(encrypted_message, password_to_char):
    decrypted_chars = []
    encrypted_passwords = encrypted_message.split(' ')

    for password in encrypted_passwords:
        if password in password_to_char:
            char = password_to_char[password]
            decrypted_chars.append(char)
        else:
            # Handle unknown passwords
            decrypted_chars.append('?')  # Or raise an error

    decrypted_message = ''.join(decrypted_chars)
    return decrypted_message

def main():
    message = input("Enter the message to encrypt: ")

    # Encrypt the message
    encrypted_message, char_to_password, password_to_char = encrypt_message(message)
    print(f"\nEncrypted Message:\n{encrypted_message}\n")

    # Decrypt the message
    decrypted_message = decrypt_message(encrypted_message, password_to_char)
    print(f"Decrypted Message:\n{decrypted_message}\n")

    # Verify if decryption is successful
    if message == decrypted_message:
        print("Decryption successful!")
    else:
        print("Decryption failed.")

if __name__ == "__main__":
    main()