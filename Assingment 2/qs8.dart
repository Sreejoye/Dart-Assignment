void main() {
  double num1 = 20;
  double num2 = 5;
  String operator = '+';

  if (operator == '+') {
    print("Result = ${num1 + num2}");
  } else if (operator == '-') {
    print("Result = ${num1 - num2}");
  } else if (operator == '*') {
    print("Result = ${num1 * num2}");
  } else if (operator == '/') {
    print("Result = ${num1 / num2}");
  } else {
    print("Invalid operator");
  }
}