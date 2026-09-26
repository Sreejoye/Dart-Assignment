class Customer {
  final String name;
  final int id;

  // Const constructor
  const Customer(this.name, this.id);

  void displayInfo() {
    print("Customer Name: $name");
    print("Customer ID: $id");
  }
}

void main() {
  const Customer customer = Customer("Sreejoye", 101);

  customer.displayInfo();
}