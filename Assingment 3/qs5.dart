double circleArea(double r) {
  return 3.1416 * r * r;
}

void main() {
  double radius = 5;

  double area = circleArea(radius);

  print("Area = $area");
}