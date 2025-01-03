# Latihan Dart OOP

Berikut adalah daftar latihan untuk mengasah kemampuan Object-Oriented Programming (OOP) menggunakan bahasa Dart. Semua latihan dirancang menyerupai proyek aplikasi nyata namun cukup menggunakan Dart murni.

---

## **Latihan 1: Sistem Pemesanan Tiket Bioskop**
### **Brief**
Kamu diminta membuat sistem sederhana untuk memesan tiket bioskop. Sistem ini akan mencakup:
- **Class**: untuk merepresentasikan bioskop, film, dan tiket.
- **Inheritance**: untuk membuat kategori film (misalnya: Film 2D dan Film 3D).
- **Polymorphism**: untuk menghitung harga tiket berdasarkan jenis film.
- **Factory Constructor**: untuk membuat objek `Tiket` dari data pelanggan dan film yang dipilih.

### **Spesifikasi:**
1. Buat class berikut:
    - `Film`: memiliki field `judul`, `durasi`, dan `kategori` (2D atau 3D).
    - `Tiket`: memiliki field `film`, `namaPembeli`, dan `harga`.
    - `Bioskop`: menyimpan daftar film yang sedang tayang.

2. Implementasikan inheritance:
    - Buat class turunan dari `Film`: `Film2D` dan `Film3D`.
    - Field tambahan: biaya tambahan untuk `Film3D`.

3. Gunakan polymorphism:
    - Override method untuk menghitung harga tiket di `Film2D` dan `Film3D`.

4. Gunakan factory constructor:
    - Buat objek `Tiket` dari data `Film` dan nama pembeli.

### **Hint**
- Gunakan `@override` untuk polymorphism.
- Gunakan **named parameter** untuk factory constructor.
- Gunakan **cascade notation** untuk menambahkan film ke daftar bioskop.

### **Contoh Output**
```
Daftar Film:
1. Avengers: Endgame (2D, 180 menit)
2. Avatar (3D, 162 menit)

Masukkan nomor film yang ingin dipesan: 2
Masukkan nama pembeli: Ali

Tiket berhasil dibuat:
Nama Pembeli: Ali
Film: Avatar
Harga: Rp85.000
```

---

## **Latihan 2: Sistem Manajemen Produk E-Commerce**
### **Brief**
Kamu diminta membuat sistem manajemen produk e-commerce. Sistem ini harus mendukung:
- **Class** untuk produk.
- **Mixin** untuk memberikan fitur diskon.
- **Getter dan Setter** untuk menghitung total harga setelah diskon.
- **Enum** untuk jenis produk (Elektronik, Pakaian, Makanan).

### **Spesifikasi**
1. Buat class `Produk` dengan field:
    - `id`, `nama`, `harga`, dan `kategori` (gunakan Enum).

2. Tambahkan mixin `Diskon`:
    - Method untuk menambahkan diskon (persentase).

3. Gunakan getter dan setter:
    - Getter untuk menghitung harga setelah diskon.
    - Setter untuk mengubah harga asli.

4. Buat daftar produk dengan beberapa kategori dan tampilkan produk yang tersedia.

### **Hint**
- Gunakan **enum** untuk kategori produk.
- Gunakan **getter** untuk kalkulasi dinamis harga setelah diskon.

### **Contoh Output**
```
Daftar Produk:
1. Laptop (Elektronik, Rp10.000.000)
2. Kaos (Pakaian, Rp100.000)
3. Pizza (Makanan, Rp150.000)

Masukkan nomor produk untuk diskon: 1
Masukkan persentase diskon: 10

Harga setelah diskon: Rp9.000.000
```

---

## **Latihan 3: Sistem Pengelolaan Akun Bank**
### **Brief**
Buat sistem pengelolaan akun bank dengan fitur:
- **Class** untuk merepresentasikan akun bank.
- **Constructor** untuk inisialisasi akun.
- **Method Overriding** untuk transaksi seperti tarik dan setor uang.
- **Exception Handling** untuk menangani saldo kurang saat penarikan.

### **Spesifikasi**
1. Buat class `AkunBank` dengan field:
    - `namaPemilik`, `saldo`, dan `nomorAkun`.

2. Tambahkan method:
    - `setorUang(double jumlah)`: Menambah saldo.
    - `tarikUang(double jumlah)`: Mengurangi saldo.

3. Gunakan Exception:
    - Jika saldo tidak cukup, lemparkan Exception dengan pesan: *"Saldo tidak mencukupi."*

4. Tambahkan fitur untuk mencetak detail akun menggunakan `toString()`.

### **Hint**
- Gunakan `@override` untuk method seperti `toString()`.
- Tangani Exception saat penarikan uang.

### **Contoh Output**
```
Akun:
Nama Pemilik: Ali
Saldo: Rp1.000.000

Masukkan jumlah uang yang ingin ditarik: Rp2.000.000
Error: Saldo tidak mencukupi.

Masukkan jumlah uang yang ingin disetor: Rp500.000
Saldo saat ini: Rp1.500.000
```

---

## **Latihan 4: Sistem Reservasi Restoran**
### **Brief**
Buat sistem reservasi restoran dengan fitur:
- **Abstract Class** untuk mendefinisikan tipe restoran.
- **Constructor** untuk menambahkan detail reservasi.
- **Polymorphism** untuk menampilkan detail reservasi berdasarkan jenis restoran (Fine Dining, Casual Dining).

### **Spesifikasi**
1. Buat abstract class `Restoran`:
    - Field: `namaRestoran`, `kapasitas`.
    - Abstract Method: `detailReservasi()`.

2. Buat turunan:
    - `FineDining` dan `CasualDining` yang mengimplementasikan `detailReservasi()`.

3. Tambahkan class `Reservasi`:
    - Field: `restoran`, `namaPemesan`, `jumlahOrang`.
    - Method untuk mencetak detail reservasi.

### **Hint**
- Gunakan `@override` untuk method `detailReservasi()`.
- Gunakan abstract class untuk menetapkan kontrak.

### **Contoh Output**
```
Masukkan jenis restoran (1: Fine Dining, 2: Casual Dining): 1
Masukkan nama restoran: Le Gourmet
Masukkan kapasitas: 50

Masukkan nama pemesan: Ali
Masukkan jumlah orang: 2

Reservasi Berhasil:
Nama Restoran: Le Gourmet
Jenis: Fine Dining
Nama Pemesan: Ali
Jumlah Orang: 2
```

---

## **Latihan 5: Sistem Keanggotaan Gym**
### **Brief**
Kamu diminta membuat sistem keanggotaan gym yang mendukung:
- **Class** untuk jenis keanggotaan.
- **Enum** untuk level keanggotaan (Gold, Silver, Bronze).
- **Getter** untuk menghitung diskon berdasarkan level keanggotaan.

### **Spesifikasi**
1. Buat class `AnggotaGym` dengan field:
    - `nama`, `levelKeanggotaan` (gunakan Enum), `biayaBulanan`.

2. Tambahkan getter:
    - `biayaSetelahDiskon` untuk menghitung biaya setelah diskon:
        - Gold: 20%, Silver: 10%, Bronze: 5%.

3. Tambahkan fitur untuk mencetak detail keanggotaan.

### **Hint**
- Gunakan **enum** untuk level keanggotaan.
- Gunakan getter untuk kalkulasi dinamis.

### **Contoh Output**
```
Masukkan nama anggota: Ali
Pilih level keanggotaan (1: Gold, 2: Silver, 3: Bronze): 1

Detail Keanggotaan:
Nama: Ali
Level: Gold
Biaya Bulanan: Rp500.000
Biaya Setelah Diskon: Rp400.000
```

---
