class Box<T> {
  T value;

  Box(this.value);

  void display() {
    print("Value: $value");
  }
}

void main() {
  Box<int> numberBox = Box<int>(100);
  Box<String> stringBox = Box<String>("Hello");
  Box<double> doubleBox = Box<double>(25.5);

  numberBox.display();
  stringBox.display();
  doubleBox.display();
}