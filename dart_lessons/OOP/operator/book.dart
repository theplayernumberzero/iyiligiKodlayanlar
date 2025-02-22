class Book extends Object {
  String name;
  int pageCount;

  Book(this.name, this.pageCount);

  //== operatorunu manipüle etme
  //Bu sayede objelerde eşitlik kontrolü yaparken referansına değil
  //içeriğine bakacağız.
  @override
  bool operator ==(Object other) {
    if (other is Book) {
      return this.name == other.name && this.pageCount == other.pageCount;
    }
    return false;
  }
}
