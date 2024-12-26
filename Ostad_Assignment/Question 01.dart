//Enhance the student management system by using interfaces to ensure role-based behavior and actions
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
