def library(inventory):
    print("\nYou enter the ancient Library. Towering shelves stretch into the darkness.")
    print("Dust motes dance in the shafts of light. You spot an old tome.")

    # Puzzle Logic
    encrypted_message = "Uryyb Jbeyq!"
    key = 13  # Rot13 cipher
    decrypted_message = ""

    for char in encrypted_message:
        if char.isalpha():
            start = ord('a') if char.islower() else ord('A')
            shifted_char = chr((ord(char) - start + key) % 26 + start)
            decrypted_message += shifted_char
        else:
            decrypted_message += char

    print("The message decrypts to:", decrypted_message)

    if decrypted_message == "Hello World!":
        print("A hidden door slides open.")
        inventory.add_item("Cipher Key")
        return "dimensional_nexus"
    else:
        print("The message makes no sense.")
        return "library"