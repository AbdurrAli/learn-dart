enum UserLevel {regular, premium, vip}

class User {
  String? name;
  UserLevel level;

  User(this.name, this.level);
}

void main() {
  var user = User('ali', UserLevel.premium);
  print(user.name);
  print(user.level);
}