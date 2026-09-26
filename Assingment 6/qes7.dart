class MathHelper {
  static int addition(int a, int b) {
    return a + b;
  }

  static int multiplication(int a, int b) {
    return a * b;
  }
}

void main() {
  int sum = MathHelper.addition(10, 5);
  int product = MathHelper.multiplication(10, 5);

  print("Addition: $sum");
  print("Multiplication: $product");
}