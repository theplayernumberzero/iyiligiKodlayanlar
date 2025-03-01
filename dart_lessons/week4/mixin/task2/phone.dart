import 'has_wifi_mixin.dart';

class Phone with HasWifiMixin {
  Phone(this.brand);
  final String brand;
}
