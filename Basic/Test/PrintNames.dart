// Latihan 5: Daftar Nama
// TODO: Buat fungsi bernama printNames yang menerima List<String> sebagai parameter.
// Fungsi ini harus mencetak setiap nama dalam daftar tersebut.
void printNames(List<String> names) {
  // Hint: Gunakan perulangan for-in untuk mengakses elemen-elemen dalam daftar.
  for (var name in names) {
    print(name);
  }
}

void main() {
  List<String> listName = ["joko", "jhon", "matthew", "clarissa", "kuro"];
  printNames(listName);
}
