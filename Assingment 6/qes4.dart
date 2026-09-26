class Car {
  Car.manual() {
    print("This is a manual car.");
  }

  // Named constructor for automatic car
  Car.automatic() {
    print("This is an automatic car.");
  }
}

void main() {
  Car.manual();
  Car.automatic();
}