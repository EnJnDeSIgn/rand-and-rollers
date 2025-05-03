class Inventory:
    def __init__(self):
        self.items = []

    def add_item(self, item):
        self.items.append(item)
        print(f"{item} has been added to your inventory.")

    def show_inventory(self):
        print("Your inventory contains:")
        for item in self.items:
            print(f"- {item}")