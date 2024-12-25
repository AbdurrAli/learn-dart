// Latihan 8: Filter Angka Genap
// TODO: Buat fungsi bernama filterEvenNumbers yang menerima List<int> sebagai parameter.
// Fungsi ini harus mengembalikan daftar baru yang hanya berisi angka genap.
List<int> filterEvenNumbers(List<int> numbers) {
  // Hint: Gunakan metode .where() untuk memfilter elemen dalam daftar.
  var filterNumber = numbers.where((numbers) => numbers % 2 == 0);
  return filterNumber.toList(); // Ganti dengan jawabanmu
}

void main() {
  List<int> listNumber = [1, 2, 4, 5, 6, 7, 8];
  print(filterEvenNumbers(listNumber));
}
