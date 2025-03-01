import 'double_box.dart';
import 'generic_box.dart';

void main() {
  final doubleBox = DoubleBox(12.62);
  final intBox = DoubleBox(1262);

  final stringBox = GenericBox<String>("Bahadir");
  final intBox2 = GenericBox<int>(22);

  final intResult = multipleWtoTimes<int>(2);
  final doubleResult = multipleWtoTimes<double>(2.21);

  print(doubleBox);
  print(intBox);
  print(stringBox);
  print(intBox2);
  print(intResult);
  print(doubleResult);
}

T multipleWtoTimes<T>(T value) {
  return value;
}
