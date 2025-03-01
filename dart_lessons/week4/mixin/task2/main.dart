import 'laptop.dart';
import 'phone.dart';

void main() {
  var laptop = Laptop("HP");
  var phone = Phone("Iphone");

  laptop.checkWifiConnection();
  phone.checkWifiConnection();
}
