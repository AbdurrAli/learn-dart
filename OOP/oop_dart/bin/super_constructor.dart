class Manager{
  String? name;
  Manager(this.name);

  void sayHello(String name) {
    print('Hi $name, my name is ${this.name}');
  }
}

class ViceManager extends Manager {
  ViceManager(String super.name);
}

void main() {
  var vp = ViceManager('Ali');
  vp.sayHello('Ahmad');
}

