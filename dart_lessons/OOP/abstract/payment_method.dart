//Abstract classtan bir nesne oluşturamayız. SAdece miras alınabilir.
abstract class PaymentMethod {
  void installment();
  void pay(double amount);
}
