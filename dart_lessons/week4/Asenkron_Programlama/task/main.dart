void main() {
  siparis();
}

Future<void> siparis() async {
  print("Sipariş alınmıştır.");
  await Future.delayed(Duration(seconds: 5));
  print("Sipariş hazırlandı.");
  await Future.delayed(Duration(seconds: 3));
  print("Sipariş teslim edildi.");
}
