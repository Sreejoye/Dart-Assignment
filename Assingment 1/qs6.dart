import 'dart:io';

void main() {
  print("Enter First Name:");
  String firstName = stdin.readLineSync()!;

  print("Enter Last Name:");
  String lastName = stdin.readLineSync()!;

  print("Full Name = $firstName $lastName");
}