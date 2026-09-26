import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");

    print("Enter Choice:");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter Task:");
      String task = stdin.readLineSync()!;
      tasks.add(task);
    } else if (choice == 2) {
      print("Enter Task to Remove:");
      String task = stdin.readLineSync()!;
      tasks.remove(task);
    } else if (choice == 3) {
      print("Tasks:");
      for (String task in tasks) {
        print(task);
      }
    } else if (choice == 4) {
      print("Thank You!");
      break;
    } else {
      print("Invalid Choice");
    }
  }
}