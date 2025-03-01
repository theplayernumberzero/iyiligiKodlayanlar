void main() {
  example();
  futureExample();

  numberStream().listen((event) {
    print("Stream current value: $event");
  });
}

void example() {
  print("object1");
  print("object2");
}

Future<void> futureExample() async {
  print("Future Object 1");
  await Future.delayed(Duration(seconds: 2));
  print("Future Object 1");

  final name = await getUsernameFromDB();
  print(name);
}

Future<String> getUsernameFromDB() async {
  print("Connecting db...");
  await Future.delayed(Duration(seconds: 2));
  return 'Bahadir';
}

Stream<int> numberStream() async* {
  //sürekli asenkron

  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    //Return yerine yield kullanılır
    yield i;
  }
}
