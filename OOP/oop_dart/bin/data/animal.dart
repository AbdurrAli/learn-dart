abstract class Animal {
  String? name;
  Animal(this.name);
  void run();
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void run() {
    print('Cat $name is running');
  }
}