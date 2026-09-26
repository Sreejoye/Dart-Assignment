T findLargest<T extends num>(T value1, T value2) {
  if (value1 > value2) {
    return value1;
  } else {
    return value2;
  }
}

void main() {
  print(findLargest<int>(10, 20));
  print(findLargest<double>(15.5, 12.5));
}