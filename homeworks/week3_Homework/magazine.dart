import 'library_item.dart';

class Magazine extends LibraryItem {
  Magazine._(super.name, super.publicationYear, this.sayi, this.category);

  factory Magazine.createMagazine(
      String name, String publicationYear, int sayi, String category) {
    return Magazine._(name, publicationYear, sayi, category);
  }

  int sayi;
  String category;

  @override
  void lending() {
    // 3 gün ödünç verilebilir
    print("You can take $name magazine for 3 days");
  }
}
