class Rectangle {
  double length;
  double width;

  // Parameterized constructor
  Rectangle(this.length, this.width);

  double calculateArea() {
    return length * width;
  }

  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

void main() {
  Rectangle rectangle = Rectangle(10, 5);

  print("Length: ${rectangle.length}");
  print("Width: ${rectangle.width}");
  print("Area: ${rectangle.calculateArea()}");
  print("Perimeter: ${rectangle.calculatePerimeter()}");
}