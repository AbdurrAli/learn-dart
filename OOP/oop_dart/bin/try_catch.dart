import 'exception.dart';

void main() {
  try {
    Validation.userValidation("", "");
  } on UsernameValidation catch (exception, stackTrace) {
    print("Login failed : ${exception.msg}");
    print("Stack Trace : ${stackTrace.toString()}");
  } on PassValidation catch (exception, stackTrace) {
    print("Login failed : ${exception.msg}");
    print("Stack Trace : ${stackTrace.toString()}");
  } finally {
    print("program selesai");
  }
}