//Create a class Student that extends Person:
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayRole() {
    print('Role: Person');
  }
}

class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(String name, int age, this.studentID, this.grade, this.courseScores)
      : super(name, age);

  @override
  void displayRole() {
    print('Role: Student');
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0;
    }
    double total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }
}

void main() {
  List<double> scores = [85.5, 90.0, 78.5];
  Student student = Student('Neshit', 20, 'Batch-9', 'A', scores);

  print('Name: ${student.name}');
  print('Age: ${student.age}');
  print('Student ID: ${student.studentID}');
  print('Grade: ${student.grade}');
  student.displayRole();
  print('Average Course Score: ${student.calculateAverageScore()}');
}
