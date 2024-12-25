// Latihan 10: Faktorial
// TODO: Buat fungsi bernama factorial yang menerima satu parameter bertipe int (n).
// Fungsi ini harus mengembalikan nilai faktorial dari n (n! = n * (n-1) * ... * 1).
int factorial(int n) {
  // Hint: Gunakan rekursi atau perulangan untuk menghitung faktorial.
  if (n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  print(factorial(10));
}
