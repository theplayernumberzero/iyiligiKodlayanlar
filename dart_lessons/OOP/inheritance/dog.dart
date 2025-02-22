import 'animal.dart';

class Dog extends Animal {
  Dog(super.name);

  void hav() {
    print("Hav hav");
  }

  @override
  void moving() {
    print("Dog is moving");
  }
}
