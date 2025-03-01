import 'flying.dart';
import 'living_thing.dart';
import 'swimming.dart';

class Hero extends LivingThing implements Swimming, Flying {
  //implements birden fazla class ile inheritance şansı sunar
  Hero(this.name);

  final String name;

  @override
  void breathe() {
    print("$name breathing");
  }

  @override
  void fly() {
    print("$name flying");
  }

  @override
  void swim() {
    print("$name swimming");
  }
}
