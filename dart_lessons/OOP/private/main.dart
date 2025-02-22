import 'bank_account.dart';
import 'book.dart';

void main(List<String> args) {
  BankAccount account = BankAccount.createWithBalance("John Doe", 1000);
  print(account.accountHolder);

  //getter setter
  print(account.balance);
  account.setBalance = 2000;
  account.accountInfos();

  //book ödev
  print("------");
  Book myBook = Book.createBook("Sefiller", 1862);
  print(myBook.price);
  myBook.setPrice = 300;
  myBook.bookInfos();
}
