class Phone2 {
  //Default constructor
  Phone2(
      {required this.brand,
      required this.model,
      required this.price,
      required this.operatingSystem});

  Phone2.createAndroid({
    required this.brand,
    required this.model,
    required this.price,
  }) : operatingSystem = "Android";

  factory Phone2.createIOS(
      {required String brand, required String model, required double price}) {
    return Phone2(
        brand: brand, model: model, price: price, operatingSystem: "IOS");
  }
  String brand;
  String model;
  double price;
  String operatingSystem;

  void showInfos() {
    print("-----------------");
    print("Marka: ${this.brand}");
    print("Model: ${this.model}");
    print("Fiyat: ${this.price}");
    print("İşletim Sistemi: ${this.operatingSystem}");
  }
}
