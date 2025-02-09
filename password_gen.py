import random
# Example symbols $, +, -, *, /, =, <, >, &, |, %, @, #, !, ?, . and ,.
# A: 🀀   B: 🀁   C: 🀂   D: 🀃   E: 🀄   F: 🀅   G: 🀆   H: 🀇   I: 🀈
# J: 🀉   K: 🀊   L: 🀋   M: 🀌   N: 🀍    O: 🀎   P: 🀏   Q: 🀐   R: 🀑
# S: 🀒   T: 🀓   U: 🀔   V: 🀕   W: 🀖    X: 🀗   Y: 🀘   Z: 🀙
# Ian = 🀈🀀🀍 🀉 🀍🀎🀑🀑🀈🀒. Enjn Design = 🀄🀍🀉🀍 🀃🀄🀒🀈🀆🀍 2024 Dec 19
# Initialize groups
groups = [
    ["4", "+", "5", "8", "a"],#5 +
    ["p", "4", "r", "/", "h"],#10 /
    ["J", "3", "%", "1", "|"],#15 % |
    ["7", "t", "=", "@", "x"],#20 = @
    ["!", "&", "I", "9", "7"],#25 ! &
    ["#", "3", "L", "3", "A"],#30 #
    ["3", "/", "c", "R", "0"],#35 / 2
    ["y", "9", "e", "=", "V"],#40 = 2
    ["j", "6", "u", "5", "0"],#45
    ["7", ".", "3", "1", "P"],#50 . .
    ["4", "z", "U", "-", "6"],#55 -
    ["5", "K", "T", "v", "8"],#60
    ["9", "M", "<", "2", "N"],#65 <
    ["5", "5", "d", "!", "3"],#70 ! 2
    ["W", "b", "9", "6", "&"],#75 & 2
    [",", "C", "X", ",", "B"],#80 , ,
    ["#", "$", "H", "8", "2"],#85 # $ 2
    ["$", "7", "2", "8", "1"],#90 $ 2.
    ["S", "9", "*", "o", "6"],#95 *
    ["6", "Z", "?", "7", "0"],#100 ?
    ["5", "1", "8", "2", "2"],#105
    ["w", "7", "%", "G", "F"],#110 % 2
    ["E", "0", "k", "O", "1"],#115
    ["4", "9", "*", "2", "3"],#120 * 2
    [">", "2", "5", "l", "6"],#125 >
    ["|", "4", "1", "1", "0"],#130 | - 2 2.
    ["Y", "Q", "4", "+", ">"],#135 + > 2 2.
    ["D", "g", "@", "<", "f"],#140 @ < 2 2.
    ["?", "8", "4", "n", "7"],#145 ? 2.
    ["4", "6", "q", ".", "i"],
    ["-", "9", "s", "8", "m"]
]

def generate_password():
    result_string = ""
    total = 0
    add_or_subtract = random.choice([1, -1]) # Initial random choice for addition or subtraction
    runs = random.choice([42, 40, 41, 43, 45, 44])

    for _ in range(runs):
        # Randomly select a group
        selected_group = random.randint(0, 30)  # 17s and 8 = 25 + 2 = 27
        # Randomly select a number from the chosen group
        selected_number = random.randint(0, 4)

        element = groups[selected_group][selected_number].strip()

        # Check if the element is a number or symbol/letter
        try:
            number = int(element)
            # Element is a number
            total += add_or_subtract * int(abs(number))
        except ValueError:
            # Element is a symbol/letter
            if total != 0:
                result_string += str(abs(total)) # Ensure total is positive
                total = 0
            result_string += element
            
            # Randomly decide whether the next operation will be addition or subtraction
            add_or_subtract = random.choice([1, -1])

    # Append any remaining total to the result string
    if total != 0:
        result_string += str(abs(total)) # Ensure total is positive

    return result_string

def main():
    count = 0

    while True:
        count += 1
        all_results = generate_password()

        # Display the current result
        print(f"Results:👻🎶🎶🎶🎶👻 {all_results}")
        user_input = input("roll again? (Y/N): ").strip().lower()
        if user_input == 'n':
            break

    print(f"Total iterations: {count}")
    print("Thank you for using the Password roller.😍")
    print("Ian = 🀈🀀🀍 🀉 🀍🀎🀑🀑🀈🀒. Enjn Design = 🀄🀍🀉🀍 🀃🀄🀒🀈🀆🀍 2024 Dec 19.👍")

if __name__ == "__main__":
    main()