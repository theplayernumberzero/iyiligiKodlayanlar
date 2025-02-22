import 'book.dart';
import 'library.dart';
import 'library_item.dart';
import 'magazine.dart';

void main() {
  //program çalıştığında oluşturduğum nesneleri Library classınnda items attributeuna ekleyeceğim
  List<LibraryItem> newItems = [];

  LibraryItem book1 =
      Book.createBook("Harry Potter", "2000", "J.K. Rowling", 300);
  LibraryItem magazine1 =
      Magazine.createMagazine("National Geographic", "2021", 5, "Science");

  book1.lending();
  magazine1.lending();

  newItems.add(book1);
  newItems.add(magazine1);

  Library library = Library(newItems);

  library.printItems();
}
