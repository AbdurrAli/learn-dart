// Latihan 7: Membalik String
// TODO: Buat fungsi bernama reverseString yang menerima satu parameter bertipe String.
// Fungsi ini harus mengembalikan String yang telah dibalik.
String reverseString(String input) {
  // Hint: Gunakan property .split() untuk mengubah string menjadi List<char> dan .reversed untuk membaliknya.
  var splitedString = input.split('');
  var reversedString = splitedString.reversed;
  return reversedString.toString(); // Ganti dengan jawabanmu
}

void main() {
  print(reverseString("Apple"));
}
