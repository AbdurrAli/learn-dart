class User {
  String? name;
  String? addr;
  int? age;
}

User? createNewUsers() {
  return null;
}

void main() {
  // non-nullable cascade
  var user1 = User()
      ..name = 'Ali'
      ..addr = 'Serang'
      ..age = 21;

  print(user1.name);
  print(user1.addr);
  print(user1.age);

  // nullable cascade
  User? user2 = createNewUsers()
    ?..name = 'Ali'
    ..addr = 'Serang'
    ..age = 21;

  print(user2?.name);
  print(user2?.addr);
  print(user2?.age);
}
