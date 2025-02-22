import 'book.dart';
import 'library_item.dart';
import 'magazine.dart';

class Library {
  Library(this.items);

  List<LibraryItem> items;

  void printItems() {
    for (var k in items) {
      print("-------");
      print(k.name);
      print(k.publicationYear);
      if (k is Book) {
        print(k.authorName);
        print(k.pageCount);
      } else if (k is Magazine) {
        print(k.sayi);
        print(k.category);
      }
    }
  }
}
