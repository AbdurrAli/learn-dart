class Person{
  String name = 'person';

  void sayHello(String name) {
    print('Hi ${this.name}, my name is $name');
  }
}

class OtherPerson extends Person{
  @override
  String name = 'other person';
}

void main() {
  var person = Person();
  person.sayHello('zaki');

  var otherPerson = OtherPerson();
  otherPerson.sayHello('ahmad');

}