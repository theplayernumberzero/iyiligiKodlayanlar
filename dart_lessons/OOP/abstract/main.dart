import 'bicycle.dart';
import 'car.dart';
import 'transportation.dart';

void main() {
  Transportation car = Car();
  Transportation bicycle = Bicycle();

  car.drive();
  bicycle.drive();
}
