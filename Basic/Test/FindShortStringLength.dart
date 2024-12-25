// Latihan 9: Mencari Panjang String Terpendek
// TODO: Buat fungsi bernama findShortestStringLength yang menerima List<String> sebagai parameter.
// Fungsi ini harus mengembalikan panjang string terpendek dalam daftar.
String findShortestStringLength(List<String> strings) {
  // Hint: Gunakan perulangan untuk membandingkan panjang string.
  var shortestString = strings[0];

  for (var i in strings) {
    if (i.length < shortestString.length) {
      shortestString = i;
    }
  }
  return shortestString; // Ganti dengan jawabanmu
} // Latihan Bonus: FizzBuzz

void main() {
  List<String> listString = ["banana", "apple", "kiwi", "grape", "fig"];
  print(findShortestStringLength(listString));
}
