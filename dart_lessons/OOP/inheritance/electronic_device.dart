class ElectronicDevice {
  ElectronicDevice(this.brand, this.isOn);

  String brand;
  bool isOn;

  void changeOnOff() {
    isOn = !isOn;
  }
}
