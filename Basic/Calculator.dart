import 'dart:io';

void main() {
  stdout.write("masukkan angka pertama: ");
  int? firstNum = int.tryParse(stdin.readLineSync()!);

  if (firstNum == null) {
    stdout.write("error -> masukkan angka yang valid !");
    return;
  }

  stdout.write("masukkan angka kedua: ");
  int? secondNum = int.tryParse(stdin.readLineSync()!);

  if (secondNum == null) {
    stdout.write("error -> masukkan angka yang valid !");
    return;
  }

  stdout.write("masukkan operator: ");
  String? opCalc = stdin.readLineSync();

  if (opCalc == null ||
      !(opCalc == '+' ||
          opCalc == '-' ||
          opCalc == 'x' ||
          opCalc == '*' ||
          opCalc == '/')) {
    stdout.write("error -> masukkan operator yang valid !");
    return;
  }

  calcMachine(firstNum, secondNum, opCalc);
}

void calcMachine([int? firstNum, int? secondNum, String? opCalc]) {
  switch (opCalc) {
    case '+':
      if (firstNum != null && secondNum != null) {
        print('$firstNum + $secondNum = ${firstNum + secondNum}');
      } else {
        print("invalid input");
      }
      break;
    case '-':
      if (firstNum != null && secondNum != null) {
        print('$firstNum - $secondNum = ${firstNum - secondNum}');
      } else {
        print("invalid input");
      }
      break;
    case 'x':
      if (firstNum != null && secondNum != null) {
        print('$firstNum x $secondNum = ${firstNum * secondNum}');
      } else {
        print("invalid input");
      }
      break;
    case '/':
      if (firstNum != null && secondNum != null) {
        print('$firstNum - $secondNum = ${firstNum / secondNum}');
      } else {
        print("invalid input");
      }
      break;
    default:
  }
}
