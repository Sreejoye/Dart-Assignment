String reverseString(String text) {
  return text.split('').reversed.join('');
}

void main() {
  String result = reverseString("Hello");

  print(result);
}