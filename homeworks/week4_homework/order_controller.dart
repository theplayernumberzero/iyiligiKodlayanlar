import 'customization_mixin.dart';

class OrderController<T> with CustomizationMixin {
  final String customerName;
  final T food;
  DateTime orderTime = DateTime.now();

  OrderController({
    required this.customerName,
    required this.food,
  });

  Future<void> processOrder() async {
    await Future.delayed(Duration(seconds: 1));
    print("[Sipariş Alındı] $orderTime");
    await Future.delayed(Duration(seconds: 2));
    print("Müşteri: $customerName");
    await Future.delayed(Duration(seconds: 1));
    print("Yemek: $food");

    await Future.delayed(Duration(seconds: 1));
    if (customizations.isNotEmpty) {
      print("Özelleştirmeler: ${customizations.join(', ')}");
    }

    await Future.delayed(Duration(seconds: 2));
    print("\nSipariş Hazırlanıyor...");
    await Future.delayed(Duration(seconds: 2));
    print("\nSipariş Teslim Edildi!");
    await Future.delayed(Duration(seconds: 1));
  }
}
