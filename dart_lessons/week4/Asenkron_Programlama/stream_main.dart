void main() {
  numberStream().listen((event) {
    print("Stream current value: $event");
  });
}

Stream<int> numberStream() async* {
  //sürekli asenkron

  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    //Return yerine yield kullanılır
    yield i;
  }
}
