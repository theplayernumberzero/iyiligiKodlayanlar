void main(List<String> args) {
  //List
  List<String> nameList = ["Umut", "Bahadir", "Kilic"];
  List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print("İsim listesi: $nameList");
  print("Sayı listesi: $numberList");

  int firstNumber = numberList[0];
  print("İlk sayı: $firstNumber");

  String lastName = nameList[nameList.length - 1];
  print("Son isim: $lastName");

  //list element ekleme
  List<double> moneyList = [5.5, 6.5, 7.5, 8.5, 9.5];
  moneyList.add(10.5);
  print("Para listesi: $moneyList");

  moneyList.insert(1, 6.0);
  print("Para listesi: $moneyList");

  //list element silme
  moneyList.remove(6.0);
  print("Para listesi: $moneyList");

  moneyList.removeAt(moneyList.length - 1); //son elemanı siler

  //String tipinde 3 adet meyve içeren bir liste oluşturun.
  //Listenin 1. indexine Muz ekleyin
  //Son elemanı remove ile silin
  //Listenin basindaki elemanı removeAt ile silin
  //Son durumu yazdırın

  List<String> fruitList = ["Elma", "Armut", "Kiraz"];
  fruitList.insert(1, "Muz");
  fruitList.removeAt(fruitList.length - 1);
  fruitList.removeAt(0);
  print("Meyve listesi: $fruitList");

  //Liste içerisinde aradığımız eleman var mı yok mu kontrolü
  List<int> ageList = [10, 20, 30, 40, 50];
  bool kontrol1 = ageList.contains(20); //true
  bool kontrol2 = ageList.contains(25); //false

  print("20 yaşında kişi var mı: $kontrol1");
  print("25 yaşında kişi var mı: $kontrol2");

  //liste elemanlarını karıştırma
  ageList.shuffle();
  print("Karıştırılmış yaş listesi: $ageList");

  //Listede girilen elemanın kaçıncı indexde olduğunu bulma
  print("30 yaşındaki kişi kaçıncı sırada: ${ageList.indexOf(30)}");

  //Liste elemanlarını sıralama
  ageList.sort();
  print("Sıralanmış yaş listesi: $ageList");

  //Rastgele sayılar içeren en az 5 elemanı olan bir liste oluşturun.
  //Listeyi karıştırın ve yazdırın.
  //Listeyi sıralayın ve yazdırın.

  List<int> randomList = [5, 10, 15, 20, 25, 30];
  print("Rastgele sayı listesi: $randomList");
  randomList.shuffle();
  print("Karıştırılmış sayı listesi: $randomList");
  randomList.sort();
  print("Sıralanmış sayı listesi: $randomList");

  //List içindeki elemanları silme
  randomList.clear();
  print("Temizlenmiş sayı listesi: $randomList"); //[]

  List<int> numberList2 = [];
  numberList2.add(10);
  numberList2.add(20);
  print("Sayı listesi: $numberList2");
  print(
      "İlk eleman: ${numberList2.firstOrNull}"); //If the list is empty, it returns null.
  print("Son eleman: ${numberList2.lastOrNull}");

  //Null değerler ile list

  List<String>? favoriteMovies;
  favoriteMovies?.add("Matrix");
  print(favoriteMovies?.first); //null

  List<int?> examScoreList = [100, 90, null, 80, 70];
  print("Sınav notları: $examScoreList");
  print("Null olan eleman: ${examScoreList.indexOf(null)}");

  //Ailedeki kişilerin yaşlarını tutan bir nullable liste oluşturun.
  //En az 3 yas degeri olsun ve biri null olsun
  //Listeyi yazdırın

  List<int?> familyAgeList = [50, 25, null, 33];
  print("Aile yaş listesi: $familyAgeList");
}
