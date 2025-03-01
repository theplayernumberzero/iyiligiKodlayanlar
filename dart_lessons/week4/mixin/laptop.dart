import 'wifi_mixin.dart';

class Laptop with WifiMixin {
  Laptop(this.brand);
  final String brand;
}
