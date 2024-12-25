// Latihan 6: Mencari Nilai Maksimum
// TODO: Buat fungsi bernama findMax yang menerima List<int> sebagai parameter.
// Fungsi ini harus mengembalikan nilai maksimum dari daftar tersebut.
int findMax(List<int> numbers) {
  // Hint: Inisialisasi nilai maksimum dengan angka pertama, lalu gunakan perulangan untuk membandingkan.
  var largestNum = numbers[0];
  for (var i in numbers) {
    if (i > largestNum) {
      largestNum = i;
    }
  }
  return largestNum; // Ganti dengan jawabanmu
}

void main() {
  List<int> listNumber = [1, 2, 4, 5, 6, 7, 8];
  print(findMax(listNumber));
}
