void main() {
  print("İyiliği kodelayanlar");
  print(100);
  String isim = "Tahsin";
  print(isim + " bir isimdir");
  String isim2 = "Burak";
  int age = 23;
  print("Burağın yaşı: " + age.toString());
  double money = 100.5;
  bool hasGlass = true;

  print(
      "$isim2 arkadaşımız $age yaşında ve gözlük kullanıyor mu: $hasGlass. O zaman $money ₺ ye gözlük almalıdır.");
  // camelCase, PascalCase, snake_case
  //değişken, sınıf isimleri, dosya isimleri

  //var ile tanımlanan değişkenlerde tip belirtmek zorunlu değildir.
  //değikenin değeriini değiştirebiliriz ancak ekstra işlem yapmadan TÜRÜNÜ DEĞİŞTİREMEYİZ.
  var studentName = "Çağrı";
  studentName = "Ayşe";
  print(studentName);

  String myName = "Bahadir";
  int myAge = 23;
  double myMoney = 1000.50;
  bool hasCar = false;

  print(
      "Benim adım $myName, $myAge yasindayim. Toplam param: $myMoney. Arabam var mı: $hasCar");

  //print içinde kodlama işlemi yapmak
  double deger1 = 10.0;
  double deger2 = 20.5;

  double sonuc = deger1 + deger2;

  print("Toplama: ${deger1 + deger2}");
  print("Toplama: $sonuc");

  var para = 100;
  var harcananPara = 20;

  var kalanPara = para - harcananPara;

  var kisiBasiPara = kalanPara / 4;

  print("4 kişilik ekipten kişi başına düşen para: $kisiBasiPara");

  //Counter
  var counterSayisi = 10;
  counterSayisi++; //counterSayisi = counterSayisi + 1
  counterSayisi--; //counterSayisi = counterSayisi - 1

  ++counterSayisi; //önce değeri arttırır sonra değişkeni yazdırır.

  //Nullable
  String? profileName = null; //değer ya string olabilir ya da null

  String profileName2 =
      profileName ?? "Kullanıcı adı gelmedi"; //default değer atama
  print(profileName2);

  //! kullanımı
  int? profileAge = null;
  //int profileAge2 = profileAge!; //Kesin olarak null gelmeyeceğini söylüyorum.
  int profileAge2 = profileAge ?? 0;
  print("Profile Age: $profileAge2");

  String? surname;
  String surname2 = surname ?? "Soyadı girilmedi.";
  print("Soyadı: $surname2");

  //if - else if - else
  int studentNumber = 20;
  int computerNumber = 20;

  if (computerNumber >= studentNumber) {
    print("Yeterli sayıda bilgisayar var.");
  } else if (computerNumber < studentNumber) {
    print("Yeterli sayıda bilgisayar yok");
  }

  int examGrade = 100;

  if (examGrade > 75) {
    print("AA");
  } else if (examGrade > 50) {
    print("BB");
  } else {
    print("FF");
  }

  String password = "123456";
  if (password.length >= 6) {
    //length fonksiyonu stringin uzunluğunu gösterir.
    print("Şifre yeterince uzun");
  } else {
    print("Şifre 6 haneden daha az");
  }

  String username = "admin";
  if (username == "admin" && password == "123456") {
    //&& operatorü VE anlamına geliyor
    print("Giriş başarılı");
  } else {
    print("Giriş başarısız");
  }

  if (username == "admin" || username == "user") {
    print("Giriş yapıldı");
  } else {
    print("Tanınmayan kullannıcı");
  }

  int myAge2 = 23;
  String myName2 = "Bahadir";

  if (myAge2 == 23 && myName2 == "Bahadir") {
    print("Tanımlı kullanıcı");
  } else {
    print("Tanımsız kullanıcı");
  }

  //Doğru ! kullanımı
  String? email;

  if (email != null) {
    print(email!);
  } else {
    print("Email alanı null gelmiş");
  }

  int weeksDay = 1;

  switch (weeksDay) {
    case 1:
      print("Pazartesi");
      break;
    case 2:
      print("Salı");
      break;
    case 3:
      print("Çarşamba");
      break;
    case 4:
      print("Perşembe");
      break;
    case 5:
      print("Cuma");
      break;
    case 6:
      print("Cumartesi");
      break;
    case 7:
      print("Pazar");
      break;
    default:
      print("Girdiğiniz değer 0 dan küçük ya da 7 den büyük");
  }

  int grade = 58;

  switch (grade) {
    case >= 75:
      print("AA");
      break;
    case >= 50:
      print("BB");
      break;
    default:
      print("FF");
  }

  //koşullar ve veri tiplerini kullanarak örnek hesaplamalar
  //İki sayı tanımlıyoruz. bu iki sayı üzerine 4 işlem uygula
  //Ayrıca bu verdiğimiz iki sayıdan hangisinin büyük olup olmadığını yazın.
}
