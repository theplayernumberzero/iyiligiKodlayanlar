void main(List<String> args) {
  //Map te key ve value değerleri vardır.
  //Key değerleri unique olmalıdır.

  Map<String, String> countryMap = {
    "TR": "Türkiye",
    "US": "Amerika",
    "DE": "Almanya",
    "FR": "Fransa"
  };

  print(countryMap);

  Map<int, String> studentList = {1: "Bahadir", 2: "Umut", 3: "Kilic"};

  print(studentList);

  //Map eleman ekleme
  studentList[4] = "Mehmet";

  String? studentName = studentList[1]; //Değer varsa alır yoksa null döner
  print("1 numaralı öğrenci: $studentName");

  //Meyve isim ve fiyatlarını tutan bir map oluşturun
  //Sonrasında yeni bir meyve ve fiyat ekleyin
  //Var olan meyvenin fiyatını yazdırın

  Map<String, int> fruitMap = {"Elma": 5, "Armut": 6, "Kiraz": 7, "Muz": 8};

  fruitMap["Kivi"] = 9;

  int? armutFiyat = fruitMap["Armut"];
  print("Armut fiyatı: $armutFiyat");

  //Map keylere ulaşma
  print("Map keys: ${fruitMap.keys}");
  //Map valuelara ulaşma
  print("Map values: ${fruitMap.values}");

  print("Elma var mı: ${fruitMap.containsKey("Elma")}"); //true
  print("Üzüm var mı: ${fruitMap.containsKey("Üzüm")}"); //false

  print("5 fiyatı var mı: ${fruitMap.containsValue(5)}"); //true
  print("10 fiyatı var mı: ${fruitMap.containsValue(10)}"); //false

  //Şehirler ve plaka kodlarını tutan bir map yazın, en az 3 elemanlı
  //34 plaka kodlu şehri yazdırın
  //Ankara şehri var mı kontrol edin

  Map<String, String> cityMap = {
    "34": "İstanbul",
    "06": "Ankara",
    "35": "İzmir",
    "58": "Sivas"
  };

  String? istanbul = cityMap["34"];
  print("34 plaka kodlu şehir: ${istanbul ?? "Bulunamadı"}");

  print("Ankara var mı: ${cityMap.containsKey("06")}"); //true
}
