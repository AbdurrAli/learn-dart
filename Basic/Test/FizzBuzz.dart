// TODO: Buat fungsi bernama fizzBuzz yang mencetak angka dari 1 sampai n.
// Namun, jika angka habis dibagi 3, cetak "Fizz". Jika habis dibagi 5, cetak "Buzz".
// Jika habis dibagi 3 dan 5, cetak "FizzBuzz".
void fizzBuzz(int n) {
  // Hint: Gunakan operator modulus % untuk mengecek pembagian.
  if (n % 3 == 0 && n % 5 == 0) {
    print('fizz buzz');
  } else if (n % 3 == 0) {
    print('buzz');
  } else {
    print(n);
  }
}

void main() {
  fizzBuzz(30);
}
