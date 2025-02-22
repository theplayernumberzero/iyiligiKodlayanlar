import 'library_item.dart';

class Book extends LibraryItem {
  factory Book.createBook(
      String name, String publicationYear, String authorName, int pageCount) {
    return Book._(name, publicationYear, authorName, pageCount);
  }

  Book._(super.name, super.publicationYear, this.authorName, this.pageCount);

  String authorName;
  int pageCount;

  @override
  void lending() {
    // 7 gün ödünç
    print("You can take $name book for 7 days");
  }
}
