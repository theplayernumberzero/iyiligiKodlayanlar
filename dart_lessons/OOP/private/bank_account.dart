class BankAccount {
  BankAccount._(this.accountHolder, this._balance);

  factory BankAccount.createWithBalance(String name, double initialBalance) {
    return BankAccount._(name, initialBalance);
  }
  //Dart dilinde private tanımlamak için _ kullanılır.
  String accountHolder;
  double _balance;

  //Setter, getter
  double get balance => _balance;

  set setBalance(double amount) {
    if (amount < 0) {
      print("Amount can't be negative");
    } else {
      _balance = amount;
    }
  }

  void depositMoney(double amount) {
    _balance += amount;
  }

  void accountInfos() {
    print("Account Holder: ${this.accountHolder}");
    print("Balance: ${this._balance}");
  }
}
