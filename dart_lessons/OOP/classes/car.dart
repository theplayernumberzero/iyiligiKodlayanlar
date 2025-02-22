class Car {
  String brand;
  int year;
  double price;
  bool isAutomatic;

  Car(this.brand, this.year, this.price, this.isAutomatic);

  void startEngine() {
    print("Engine started ${this.brand}");
  }
}
