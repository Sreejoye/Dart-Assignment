import 'dart:io';

void main() {
  String name1 = 'John';
  int age1 = 20;
  String address1 = 'Dhaka';

  String name2 = 'Alex';
  int age2 = 22;
  String address2 = 'Sylhet';

  File file = File('students.csv');

  file.writeAsStringSync(
    'Name,Age,Address\n'
    '$name1,$age1,$address1\n'
    '$name2,$age2,$address2\n',
  );

  String data = file.readAsStringSync();

  print(data);
}