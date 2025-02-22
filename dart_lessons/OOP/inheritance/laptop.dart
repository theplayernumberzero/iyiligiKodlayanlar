import 'electronic_device.dart';

class Laptop extends ElectronicDevice {
  Laptop(super.brand, super.isOn, this.ram);

  String ram;

  void executeProgram() {
    print("Program is executing with $ram ram...");
  }
}
