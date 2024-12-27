class Person {
  var names = "joko";
  String? addr;
  final String univ = 'Universitas Indonesia';
}

void main() {
  var person = Person();
  person.names = 'Aldi'; // aldi
  person.addr = 'Bali'; // bali
  // person.univ = 'Universitas Telkom'; -> error, this is final value

  print(person.names);
  print(person.addr);
  print(person.univ);
}