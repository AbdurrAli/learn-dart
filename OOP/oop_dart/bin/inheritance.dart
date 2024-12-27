// parent class
class Manager {
  String? names;

  void sayHello(String name) {
    print('Hi $names, my name is $name');
  }
}

// child class
class VicePrecident extends Manager {
  // rest of class
}

void main() {

  // calling parent class
  var manager = Manager()..names = 'Aldi';
  manager.sayHello('Mashud'); // Hi Aldi, my name is Mashud

  // calling child class
  var vp = VicePrecident()..names = 'Kuro';
  vp.sayHello('Shiro'); // Hi Kuro, my name is Shiro
}
