class Employee {
  String name;
  String designation;
  double salary;

  // Parameterized constructor
  Employee(this.name, this.designation, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Designation: $designation");
    print("Salary: $salary");
    print("--------------------");
  }
}

void main() {
  // Creating three Employee objects
  Employee employee1 = Employee("Rahim", "Manager", 50000);
  Employee employee2 = Employee("Karim", "Developer", 40000);
  Employee employee3 = Employee("Nadia", "Designer", 35000);

  // Storing objects in a list
  List<Employee> employees = [
    employee1,
    employee2,
    employee3
  ];

  for (Employee employee in employees) {
    employee.displayInfo();
  }
}