import 'vehicle.dart';

class Car implements Vehicle {
  Car(this.name);
  final String name;

  @override
  void move() {
    print("$name moving");
  }
}
