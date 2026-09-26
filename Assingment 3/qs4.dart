import 'dart:math';

String generatePassword(int length) {
  const characters =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

  Random random = Random();
  String password = "";

  for (int i = 0; i < length; i++) {
    int index = random.nextInt(characters.length);
    password += characters[index];
  }

  return password;
}

void main() {
  String password = generatePassword(8);

  print("Random Password: $password");
}