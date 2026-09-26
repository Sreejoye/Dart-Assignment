class Company {
  String name;
  double baseSalary;

  Company(this.name, this.baseSalary);

  double calculateMonthlySalary() {
    return baseSalary;
  }
}

class Manager extends Company {
  double bonus;

  Manager(String name, double baseSalary, this.bonus)
      : super(name, baseSalary);

  @override
  double calculateMonthlySalary() {
    return baseSalary + bonus;
  }
}

class Developer extends Company {
  double projectAllowance;

  Developer(String name, double baseSalary, this.projectAllowance)
      : super(name, baseSalary);

  @override
  double calculateMonthlySalary() {
    return baseSalary + projectAllowance;
  }
}

void main() {
  Manager manager = Manager("Rahim", 50000, 10000);

  Developer developer = Developer("Karim", 40000, 5000);

  print("Manager: ${manager.name}");
  print("Monthly Salary: ${manager.calculateMonthlySalary()}");

  print("----------------------");

  print("Developer: ${developer.name}");
  print("Monthly Salary: ${developer.calculateMonthlySalary()}");
}