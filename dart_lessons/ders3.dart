void main(List<String> args) {
  //ilkel veri tipleri ile atama yaparken değeri kopyalar

  int number1 = 10;
  int number2 = number1;
  number1 = 20;
  print("Number1: $number1, Number2: $number2");

  //Referans veri tipleri ile atama yaparken referansı kopyalar
  List<int> numberList1 = [1, 2, 3, 4, 5];
  List<int> numberList2 = numberList1;
  numberList1.add(6);
  numberList1 = [10, 20, 30]; //numberList1'in referansı değişir
  print("NumberList1: $numberList1, NumberList2: $numberList2");

  //Bir isim listesi oluşturun
  //Bu isim listesini başka bir isim listesine atayın
  //İlk listeye yeni bir isim ekleyin
  //Her iki listeyi de yazdırın
  List<String> nameList1 = ["Umut", "Bahadir", "Kilic"];
  List<String> nameList2 = nameList1;
  nameList1.add("Mehmet");
  print("NameList1: $nameList1, NameList2: $nameList2");

  //Dögüler
  for (int i = 0; i < 10; i++) {
    print("Döngü değeri: $i");
  }

  List<String> brandList = ["Apple", "Samsung", "Huawei", "Xiaomi"];

  for (int i = 0; i < brandList.length; i++) {
    print("Marka: ${brandList[i]}");
  }

  for (String brand in brandList) {
    print("Marka İsmi 2: $brand");
  }

  //Meyvelerin oluştuğu bir liste oluşturun
  //index numarası kullanarak for ile liste elemanlarını yazdırın
  //Ardından for in döngüsü ile liste elemanlarını yazdırın

  List<String> fruitList = ["Elma", "Armut", "Kiraz", "Muz"];
  for (int i = 0; i < fruitList.length; i++) {
    print("Meyve: ${fruitList[i]}");
  }

  for (String fruit in fruitList) {
    print("Meyve 2: $fruit");
  }

  int index = 0;
  while (index < fruitList.length) {
    print("While döngüsü: $index");
    print("Meyve while: ${fruitList[index]}");
    index++;
  }

  //While döngüsü kullanarak 1 den 100 e kadar olan sayılardan 7 ye bölünebilenleri yazdırın
  int number = 1;
  while (number <= 100) {
    if (number % 7 == 0) {
      print("7 ye bölünebilen sayı: $number");
    }
    number++;
  }

  //final ve const
  //final ve const ile tanımlanan değişkenlerin değeri değiştirilemez
  //final ve const farkı şudur: final çalışma zamanında değeri atanır, const derleme zamanında değeri atanır
  final int number3 = 10;
  const int number4 = 20;

  helloIyiligiKodlayanlar();
  sayHello(name: "Bahadir");

  //Ödev
  myName();
  myAge(23);

  int toplam = add(10, 20);
  print("Toplam: $toplam");

  String personInfo = getPersonInfo("Bahadir", 23);
  print(personInfo);

  printStudentInfo(name: "Bahadir");

  String product = createProduct(
      name:
          "Kalem"); //name zorunlu, category ve quantity opsiyonel olduğu için name getirir, diğerlerini girmeye gerek yok
  print(product);

  String studentInfo = getStudentInfo(name: "Bahadir");
  print(studentInfo);
}

//functions
void helloIyiligiKodlayanlar() {
  print("Merhaba İyiliği kodlayanlar ekibi..");
}

void sayHello({required String name, String from = "Türkiye"}) {
  print("Merhaba $name, $from'dan selamlar..");
}

//parameter almayan bir fonksiyon yazın, bu fonksiyon kendi isminizi yazdırsın
//parameter alan bir fonksiyon yazın, bu fonksiyon size verilen yaşı yazdırsın

void myName() {
  print("Bahadir Kilic");
}

void myAge(int age) {
  print("Yaşınız: $age");
}

int add(int number1, int number2) {
  return number1 + number2;
}

String getPersonInfo(String name, [int age = 18]) {
  //ya da [int? age]
  return "Kişi adı: $name, Yaşı: $age";
}

//required ve optional parametreler
void printStudentInfo({required String name, int? age}) {
  print("Öğrenci adı: $name");
  if (age != null) {
    print("Öğrenci yaşı: $age");
  }
}

String createProduct(
    {required String name, String category = "Genel", int? quantity}) {
  return "Ürün adı: $name, Kategori: $category, Adet: ${quantity ?? 1}";
}

//Bir öğrencinin adını ve notunu alan bir fonksiyon yazın
//Adı zorunlu ve isimli parametre, notu ise isimli ve default değeri 0 olan parametre
//Bu fonksiyon adı ve notu String olarak döndürsün
//Bu fonksiyonu çağırarak öğrencinin adını ve notunu yazdırın

String getStudentInfo({required String name, int grade = 0}) {
  return "Öğrenci adı: $name, Notu: $grade";
}
