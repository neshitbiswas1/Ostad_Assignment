//Define an interface named Role:
abstract class Role {
  void displayRole();
}

class Student implements Role {
  @override
  void displayRole() {
    print("Role: Student");
  }
}

class Teacher implements Role {
  @override
  void displayRole() {
    print("Role: Teacher");
  }
}

void main() {
  Role student = Student();
  Role teacher = Teacher();

  student.displayRole();
  teacher.displayRole();
}
