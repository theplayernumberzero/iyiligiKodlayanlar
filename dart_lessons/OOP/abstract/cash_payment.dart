import 'payment_method.dart';

class CashPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paying $amount with cash");
  }

  @override
  void installment() {
    // TODO: implement installment
  }
}
