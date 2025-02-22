import 'book.dart';

void main() {
  Book book1 = Book("Dart Book", 222);
  Book book2 = Book("Dart Book", 222);
  Book book3 = book1;

  print("Is book1 and book2 equal: ${book1 == book2}");
  print("Is book1 and book3 equal: ${book1 == book3}");

  print(book1.hashCode);
  print(book2.hashCode);
  print(book3.hashCode);
}
