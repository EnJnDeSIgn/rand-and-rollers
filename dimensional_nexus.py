def dimensional_nexus(inventory):
    print("\nYou enter the Dimensional Nexus. The fabric of reality seems to twist and warp around you.")
    print("This is the culmination of your journey. Stabilize the dimensions to save the world.")

    # Challenge Logic (Simple Example)
    print("Align the dimensions by solving this puzzle:")
    puzzle = "What is 2 + 2?"
    answer = input("Enter your answer: ")

    if answer == "4":
        print("The dimensions stabilize. You have saved the world!")
        return "end"
    else:
        print("The dimensions remain unstable. Try again.")
        return "dimensional_nexus"