//Create a class StudentManagementSystem:

abstract class Role {
  void displayRole();
}


class Student implements Role {
  String name;
  int age;
  String address;
  List<int> scores;

  Student(this.name, this.age, this.address, this.scores);

  double get averageScore {
    return scores.isEmpty ? 0.0 : scores.reduce((a, b) => a + b) / scores.length;
  }

  @override
  void displayRole() {
    print('Student Information:');
    print('Role: Student');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Average Score: ${averageScore.toStringAsFixed(1)}');
  }
}


class Teacher implements Role {
  String name;
  int age;
  String address;
  List<String> coursesTaught;

  Teacher(this.name, this.age, this.address, this.coursesTaught);

  @override
  void displayRole() {
    print('Teacher Information:');
    print('Role: Teacher');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('$course');
    }
  }
}

void main() {

  var student = Student('Neshit', 24, 'Dhaka,Bangladesh', [90, 85, 82]);
  student.displayRole();


  var teacher = Teacher('Taufiqur Sabbir', 30, 'Dhaka', ['Dart', 'Flutter', 'Bangla']);
  teacher.displayRole();
}
