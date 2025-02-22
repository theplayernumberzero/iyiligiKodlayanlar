import 'electronic_device.dart';

class Phone3 extends ElectronicDevice {
  Phone3(super.brand, super.isOn, this.model);

  String model;

  void call() {
    print("$model model is Calling...");
  }
}
