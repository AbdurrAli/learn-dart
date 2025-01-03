import 'data/car.dart';
import 'data/animal.dart';

class Avanza implements Car, Animal, GetBrand {
  @override
  String? name;

 @override
  void drive() {
    print("Car is moving");
  }

  @override
  int getTire() => 4;

 @override
  void run() {
    print("cat is run");
  }

  @override
  String getBrand() {
   return 'Toyota';
  }

}

void main() {

  var avanza = Avanza();
  avanza.drive();
  avanza.run();

  print(avanza.getTire());
  print(avanza.getBrand());

}

