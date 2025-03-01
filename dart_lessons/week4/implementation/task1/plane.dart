import 'vehicle.dart';

class Plane implements Vehicle {
  Plane(this.name);
  final String name;

  @override
  void move() {
    print("$name moving");
  }
}
