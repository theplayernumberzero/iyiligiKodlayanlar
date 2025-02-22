import 'animal.dart';

class Cat extends Animal {
  Cat(super.name);

  void meow() {
    print("meow meow");
  }

  @override
  void moving() {
    print("Cat is moving");
  }
}
