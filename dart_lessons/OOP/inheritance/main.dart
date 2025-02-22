import 'animal.dart';
import 'cat.dart';
import 'dog.dart';
import 'laptop.dart';
import 'phone_3.dart';

void main() {
  Animal animal = Animal("Animal");
  animal.speak();
  //animal.meow();  Super class cant use sub class methods
  //animal.hav();
  animal.moving();

  Cat cat = Cat("Cat");
  cat.speak();
  cat.meow();
  cat.moving();

  Dog dog = Dog("Dog");
  dog.speak();
  dog.hav();
  dog.moving();

  Phone3 phone3 = Phone3("Samsung", true, "Galaxy S21");
  phone3.call();
  phone3.changeOnOff();

  Laptop laptop = Laptop("Dell", true, "16 GB");
  laptop.executeProgram();
  phone3.changeOnOff();
}
