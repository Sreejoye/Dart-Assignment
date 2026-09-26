class Person {
  String name;

  Person(this.name);

  void displayPersonInfo() {
    print("Name: $name");
  }
}

class Employee extends Person {
  double salary;

  Employee(String name, this.salary) : super(name);

  void displayEmployeeInfo() {
    print("Name: $name");
    print("Salary: $salary");
  }
}

void main() {
  Employee employee = Employee("Rahim", 40000);

  employee.displayEmployeeInfo();
}