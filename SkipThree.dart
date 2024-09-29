import 'dart:io';

void main() {
  stdout.write("masukkan rentang angka:");
  int? rangeNum = int.tryParse(stdin.readLineSync()!);
  if (rangeNum != null) {
    threeChecker(rangeNum);
  } else {
    stdout.write("Try to fill the number");
  }
}

void threeChecker(int? rangeNum) {
  for (var i = 0; i <= rangeNum!; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }
}
