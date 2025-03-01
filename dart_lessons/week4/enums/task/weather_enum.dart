void main(List<String> args) {
  var enum_example = WeatherEnum.Snowy;
  print(enum_example.getAdvice());
}

enum WeatherEnum {
  Sunny,
  Rainy,
  Cloudly,
  Snowy;

  String getAdvice() {
    switch (this) {
      //this oluşturulan nesneyi temsil eder
      case WeatherEnum.Sunny:
        return "Hava güneşli";
      case WeatherEnum.Rainy:
        return "Hava yağmurlu";
      case WeatherEnum.Cloudly:
        return "Hava bulutlu";
      case WeatherEnum.Snowy:
        return "Hava karlı";
    }
  }
}
