import random
import time

def math_fun():
    score = 0
    total_time = 0.0

    for i in range(10):  # 10 problems for the game
        start_time = time.time()  # Start timer

        # Quantum Version 1.0 logic
        random_val1 = random.randint(0, 2)
        if random_val1 == 0:
            num1 = random.randint(1, 5)  # 1-5
        elif random_val1 == 1:
            num1 = random.randint(6, 10)  # 6-10
        elif random_val1 == 2:
            num1 = random.randint(11, 15)  # 11-15

        if num1 < 1 or num1 > 15:
            print("Error: num1 out of range")
            return

        random_val2 = random.randint(0, 2)
        if random_val2 == 0:
            num2 = random.randint(1, 5)  # 1-5
        elif random_val2 == 1:
            num2 = random.randint(6, 10)  # 6-10
        elif random_val2 == 2:
            num2 = random.randint(11, 15)  # 11-15

        if num2 < 1 or num2 > 15:
            print("Error: num2 out of range")
            return

        rand = random.random()
        if rand < 0.25:
            operator = '+'
            correct_answer = num1 + num2
        elif rand < 0.5:
            operator = '-'
            correct_answer = num1 - num2
        elif rand < 0.75:
            operator = '*'
            correct_answer = num1 * num2
        else:
            operator = '/'
            if num2 == 0 or num1 % num2 != 0:
                valid_divisor_found = False
                for multiplier in range(2, 10):
                    if num2 * multiplier <= 15:
                        num1 = num2 * multiplier
                        correct_answer = num1 // num2
                        valid_divisor_found = True
                        break
                if not valid_divisor_found:
                    num1 = num2
                    correct_answer = 1
            else:
                correct_answer = num1 // num2

        print(f"What is {num1} {operator} {num2}?")
        user_answer = int(input())

        if user_answer == correct_answer:
            print("Correct!")
            score += 1
        else:
            print(f"Incorrect. The correct answer is {correct_answer}")

        end_time = time.time()  # End timer
        elapsed_time = end_time - start_time
        total_time += elapsed_time
        total_score = score / total_time

    print(f"Game over! Your score is: {score} out of 10")
    print(f"Total time taken: {total_time:.2f} seconds")
    print(f"Score Value: {total_score:.60f}")

if __name__ == "__main__":
    math_fun()