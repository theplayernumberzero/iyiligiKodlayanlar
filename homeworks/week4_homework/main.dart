import 'foods_enum.dart';
import 'order_controller.dart';

void main() {
  runOrder();
}

void runOrder() async {
  final pizzaOrder = OrderController<Foods>(
    customerName: "Bahadır",
    food: Foods.Pizza,
  );
  pizzaOrder.addCustomization("Ekstra peynir");
  pizzaOrder.addCustomization("Sucuklu");
  pizzaOrder.addCustomization("Acılı");

  await pizzaOrder.processOrder();
}
