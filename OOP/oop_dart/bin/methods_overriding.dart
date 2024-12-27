// parent class
class Manager {
  String? names;

  // Parent methods
  void sayHello(String name) {
    print('Hi $names, my name is $name and im a manager');
  }
}

// child class
class VicePrecident extends Manager {
  // rest of class

  // override methods
  @override // in dart we should use annotation @override
  void sayHello(String name) {
    print('Hi $names, my name is $name and im vice manager');
  }
}

void main() {

  // calling parent class
  var manager = Manager()..names = 'Aldi';
  manager.sayHello('Mashud');
  // Hi Aldi, my name is Mashud and im a manager

  // calling child class
  var vp = VicePrecident()..names = 'Kuro';
  vp.sayHello('Shiro');
  // Hi Kuro, my name is Shiro and im vice manager
}
