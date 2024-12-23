void main() {

  Map<int, String> daftarNama = {};

  daftarNama[1] = "daffa";
  daftarNama[2] = "joko";

  print(daftarNama);

  daftarNama[2] = "mashud";

  print(daftarNama);

  daftarNama.remove(1);

  print(daftarNama.length);
  print(daftarNama);

}