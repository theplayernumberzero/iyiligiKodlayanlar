import 'has_wifi_mixin.dart';

class Laptop with HasWifiMixin {
  Laptop(this.brand);
  final String brand;
}
