void main() {
  final user = User(name: "Bahadir", age: 23, gender: Gender.male);
  print(user.gender);
}

//sabit değerleri topladığımız yerdir
enum Gender { male, female }

class User {
  User({required this.name, required this.age, required this.gender});

  final String name;
  final int age;
  final Gender gender;
}
