import 'dart:convert';

import 'classes/car.dart';
import 'classes/person.dart';
import 'classes/phone.dart';
import 'static/calculator.dart';
import 'static/convertor.dart';

void main(List<String> args) {
  Car car1 = Car("Audi", 2018, 1200000, true);

  print(car1.brand);

  car1.brand = "BMW";
  print(car1.brand);

  car1.startEngine();

  Phone phone1 = Phone(
      brand: "Apple", model: "Iphone 13", price: 10000, operatingSystem: "IOS");

  phone1.phoneInfos();
  phone1.openPhone();
  phone1.newPrice(13000);
  phone1.phoneInfos();
  phone1.closePhone();

  Calculator myCalculator = Calculator();
  myCalculator.square(5); //non-static method

  //Static method: You can use this method or attributes without creating instance of class
  print(Calculator.pi);
  print(Calculator.circleArea(10));

  Convertor.convertMeterToKilometer(3000);
  Convertor.convertCelciusToFahrenheit(34);

  //Default constructor ile nesne oluşturma
  Person person1 = Person(name: "Ali", surname: "Veli", userType: "Customer");
  Person person2 =
      Person(name: "Mehmet", surname: "Günes", userType: "Admin", age: 23);

  person1.personInfos();
  person2.personInfos();

  //Named constructor ile nesne oluşturma
  Person person3 = Person.createAdmin(name: "Ayşe", surname: "Yılmaz", age: 25);
  Person person4 =
      Person.createCustomer(name: "Fatma", surname: "Kara", age: 30);

  person3.personInfos();
  person4.personInfos();

  //Factory constructor ile nesne oluşturma
  Person person5 = Person.yilmazFamilyContructor("Yusuf");
  person5.personInfos();
}
