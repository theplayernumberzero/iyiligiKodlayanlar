class Convertor {
  static void convertMeterToKilometer(double meter) {
    double kilometer = meter / 1000;
    print("$meter meter is equal to $kilometer km");
  }

  static void convertCelciusToFahrenheit(double celcius) {
    double fahrenheit = celcius * 1.8 + 32;
    print("$celcius celcius is equal to $fahrenheit fahrenheit");
  }
}
