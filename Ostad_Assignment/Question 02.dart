//Create a class Person:
abstract class Role {
  void displayRole();
}


class Person implements Role {
  final String name;
  final int age;
  final String address;

  Person({required this.name, required this.age, required this.address});


  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    print("This person has a specific role, but it is not defined in Person class.");
  }


  void displayPersonDetails() {
    print("Name: $name, Age: $age, Address: $address");
  }
}

void main() {
  Person person = Person(name: "Neshit", age: 24, address: "Dhaka,Bangladesh");

  person.displayPersonDetails();
  person.displayRole();
}
