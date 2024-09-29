import 'dart:io';

void main() {
  var seed = 10;
  while (seed >= 1) {
    var catalyst = 0;
    while (catalyst < seed) {
      stdout.write("*");
      catalyst++;
    }
    print(" ");
    seed--;
  }
}