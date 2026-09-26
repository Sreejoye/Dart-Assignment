import 'dart:io';

void main() {
  File file = File('hello.txt');

  file.writeAsStringSync('Sreejoye');

  print('Name added successfully.');
}