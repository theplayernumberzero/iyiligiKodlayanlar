class Book {
  Book._(this.name, this.publishedYear, this._price);

  factory Book.createBook(String name, int publishedYear) {
    return Book._(name, publishedYear, 0);
  }

  String name;
  int publishedYear;
  int _price;

  int get price => _price;
  set setPrice(int price) {
    if (price < 0) {
      _price = 0;
    } else if (price > 1000) {
      _price = 1000;
    } else {
      _price = price;
    }
  }

  void bookInfos() {
    print("Book Name: ${this.name}");
    print("Published Year: ${this.publishedYear}");
    print("Price: ${this._price}");
  }
}
