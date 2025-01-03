class UsernameValidation implements Exception{
  String? msg;
  UsernameValidation(this.msg);
}

class PassValidation implements Exception{
  String? msg;
  PassValidation(this.msg);
}

class Validation {
  static void userValidation(String username, String pass) {
    if (username == "" && pass == "") {
      throw UsernameValidation('Username and Password can not blank');
    } else if (username != "Ali" || pass != "Ali123") {
      throw PassValidation('Wrong Credential');
    } else {
      print("Login Success");
    }
  }
}

void main() {
  Validation.userValidation('', 'admin123');
}