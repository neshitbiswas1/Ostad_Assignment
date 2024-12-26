//Create another class Teacher that extends Person:
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayRole() {
    print('Role: Person');
  }
}

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, this.teacherID, this.coursesTaught) : super(name, age);

  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayCoursesTaught() {
    print('Courses taught by $name:');
    for (var course in coursesTaught) {
      print(course);
    }
  }
}

void main() {
  var teacher = Teacher('Taufiqur Sabbir', 30, 'T123', ['Dart Language', 'Flutter Development']);
  teacher.displayRole();
  teacher.displayCoursesTaught();

}
