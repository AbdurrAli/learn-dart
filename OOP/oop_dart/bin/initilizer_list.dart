class Name {
  String? firstName;
  String? lastName;
  String? fullName;

  /* using initializer list to change
  first name and last name
  by splitting full name
  */
  Name(this.fullName)
      : firstName = fullName?.split(" ")[0],
        lastName = fullName?.split(" ")[1] {
    print("Createa new users");
  }
}

void main() {
  var userName = Name('Abdurrahman Ali');
  print(userName.fullName);
  print(userName.firstName);
  print(userName.lastName);
}
