class Phone {
  String brand;
  String model;
  int price;
  String operatingSystem;

  Phone(
      {required this.brand,
      required this.model,
      required this.price,
      required this.operatingSystem});

  void openPhone() {
    print("${this.model} telefon açıldı");
  }

  void closePhone() {
    print("${this.model} telefon kapandı");
  }

  void newPrice(int newPrice) {
    this.price = newPrice;
    print("Yeni fiyat: ${this.price}");
  }

  void phoneInfos() {
    print("Marka: ${this.brand}");
    print("Model: ${this.model}");
    print("Fiyat: ${this.price}");
    print("İşletim Sistemi: ${this.operatingSystem}");
  }
}
