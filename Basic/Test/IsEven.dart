// Latihan 4: Mengecek Bilangan Genap atau Ganjil
// TODO: Buat fungsi bernama isEven yang menerima satu parameter bertipe int.
// Fungsi ini harus mengembalikan true jika bilangan genap dan false jika ganjil.
bool isEven(int number) {
  // Hint: Gunakan operator modulus % untuk menentukan genap atau ganjil.
  if (number % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print(isEven(9));
}
