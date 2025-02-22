// 3 farklı constructorumuz var
//Default, named, factory constructor

class Person {
  //Default constructor
  Person(
      {required this.name,
      required this.surname,
      required this.userType,
      this.age});

  //Named constructor
  Person.createAdmin({required this.name, required this.surname, this.age})
      : userType = "Admin" {
    print("Admin oluşturuldu");
  }

  Person.createCustomer({required this.name, required this.surname, this.age})
      : userType = "Customer" {
    print("Admin oluşturuldu");
  }

  Person.ozturkFamliyAdmin({required this.name, this.age})
      : userType = "Admin",
        surname = "Öztürk" {
    print("Admin oluşturuldu");
  }

  //Factory constructor: Fonksiyon özgürlüğü sağlar
  factory Person.yilmazFamilyContructor(String username) {
    return Person(name: username, surname: "Yılmaz", userType: "Admin");
  }
  String name;
  String surname;
  String userType;
  int? age;

  void personInfos() {
    print("-----------------");
    print("Name: ${this.name}");
    print("Surname: ${this.surname}");
    print("User Type: ${this.userType}");
    print("Age: ${this.age}");
  }
}
