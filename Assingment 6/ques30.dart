abstract class Person {
  String name;

  Person(this.name);

  
  void displayRole();
}

class Student extends Person {
  int studentId;

  // Private CGPA for encapsulation
  double _cgpa;

  Student(String name, this.studentId, double cgpa)
      : _cgpa = cgpa,
        super(name);


  double get cgpa {
    return _cgpa;
  }

  
  set cgpa(double value) {
    if (value >= 0 && value <= 4) {
      _cgpa = value;
    } else {
      print("Invalid CGPA.");
    }
  }

  @override
  void displayRole() {
    print("Role: Student");
  }

  void displayStudentInfo() {
    print("Student ID: $studentId");
    print("Name: $name");
    print("CGPA: $_cgpa");
  }
}

class Course {
  String courseCode;
  String courseName;
  int credit;

  Course(this.courseCode, this.courseName, this.credit);

  void displayCourse() {
    print("Course Code: $courseCode");
    print("Course Name: $courseName");
    print("Credit: $credit");
  }
}

class Enrollment {
  Student student;
  Course course;

  Enrollment(this.student, this.course);

  void displayEnrollment() {
    print("Student: ${student.name}");
    print("Course: ${course.courseName}");
    print("Course Code: ${course.courseCode}");
  }
}

void main() {
  // Creating Student object
  Student student = Student("Sreejoye", 101, 3.75);

  Course course = Course("CSE1211", "Structured Programming", 3);

  Enrollment enrollment = Enrollment(student, course);

  print("===== STUDENT INFORMATION =====");
  student.displayStudentInfo();

  print("\n===== COURSE INFORMATION =====");
  course.displayCourse();

  print("\n===== ENROLLMENT INFORMATION =====");
  enrollment.displayEnrollment();

  print("\n===== POLYMORPHISM =====");

  // Parent reference, child object
  Person person = student;
  person.displayRole();

  print("\n===== ENCAPSULATION =====");

  print("Current CGPA: ${student.cgpa}");

  student.cgpa = 3.90;

  print("Updated CGPA: ${student.cgpa}");
}