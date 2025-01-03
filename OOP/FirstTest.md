## **Latihan 1: Membuat dan Mengelola Data Produk**
**Brief:**  
Buatlah sebuah `class` bernama `Product` untuk merepresentasikan data produk. Setiap produk memiliki atribut berikut:
- `id` (int)
- `name` (String)
- `price` (double)
- `stock` (int)

Tambahkan fungsi berikut:
1. Method `displayInfo()` untuk menampilkan informasi produk.
2. Method `updateStock(int newStock)` untuk memperbarui jumlah stok.
3. Method `isAvailable()` yang mengembalikan `true` jika `stock > 0`.

**Hint:**  
Gunakan konsep **class**, **object**, **field**, dan **method**.

---

## **Latihan 2: Sistem Penjualan**
**Brief:**  
Buat sebuah `class` bernama `Order` untuk mengelola pesanan. Atributnya:
- `id` (int)
- `product` (Product)
- `quantity` (int)

Tambahkan fungsi berikut:
1. Method `calculateTotal()` untuk menghitung total harga pesanan.
2. Gunakan **cascade notation** saat membuat pesanan baru.

**Hint:**  
Manfaatkan class `Product` dari Latihan 1. Pelajari penggunaan **constructor**, **cascade notation**, dan **method expression body**.

---

## **Latihan 3: Sistem Inventori**
**Brief:**  
Buat `class` bernama `Inventory` untuk mengelola daftar produk. Tambahkan fungsi:
1. `addProduct(Product product)` untuk menambahkan produk baru.
2. `findProductByName(String name)` untuk mencari produk berdasarkan nama (gunakan **polymorphism** atau **type check dan casts** jika perlu).
3. `removeProduct(int id)` untuk menghapus produk berdasarkan ID.

**Hint:**  
Gunakan konsep **list**, **type check**, **polymorphism**, dan **getter/setter**.

---

## **Latihan 4: Sistem Pengguna dengan Peran**
**Brief:**  
Buat `class` bernama `User` dengan atribut:
- `id` (int)
- `name` (String)
- `role` (enum: `UserRole` berisi `Admin`, `Customer`, `Guest`)

Tambahkan:
1. Method `isAdmin()` untuk mengecek apakah user adalah admin.
2. Buat **getter** untuk mengambil nama user dalam huruf kapital.
3. Gunakan **toString()** untuk menampilkan informasi user dengan format yang jelas.

**Hint:**  
Pelajari penggunaan **enum**, **getter**, **toString()**, dan **equals operator**.

---

## **Latihan 5: Perhitungan Diskon**
**Brief:**  
Buat `class` bernama `Discount` yang menggunakan konsep:
1. **Factory constructor** untuk membuat diskon berdasarkan tipe (`Flat` atau `Percentage`).
2. Tambahkan method `applyDiscount(double price)` untuk menghitung harga setelah diskon diterapkan.

**Hint:**  
Manfaatkan konsep **factory constructor**, **initializer list**, dan **constant constructor**.

---

## **Latihan 6: Sistem Notifikasi**
**Brief:**  
Buat `class` bernama `Notification` yang memiliki atribut `message` dan gunakan:
1. **Abstract class** `Notifier` dengan method `send()`.
2. Implementasikan dua subclass: `EmailNotifier` dan `SMSNotifier`.

**Hint:**  
Gunakan konsep **abstract class**, **method overriding**, dan **inheritance**.

---

## **Latihan 7: Validasi Pengguna**
**Brief:**  
Buat `class` bernama `UserValidator` untuk memvalidasi data pengguna.
1. Gunakan **typedef** untuk mendefinisikan fungsi validasi.
2. Implementasikan method `validate(User user)` yang menerima beberapa validasi (e.g., validasi nama, validasi peran).

**Hint:**  
Manfaatkan konsep **typedef**, **interface**, dan **multiple interface inheritance**.

---

## **Latihan 8: Log Aktivitas**
**Brief:**  
Buat `class` bernama `Logger` yang:
1. Memiliki method `log(String message)` dengan informasi waktu saat log dibuat.
2. Gunakan **mixin** `TimestampMixin` untuk menambahkan timestamp pada log.

**Hint:**  
Gunakan **mixin** dan **metadata**.

---

## **Latihan 9: Sistem Error Handling**
**Brief:**  
Buat simulasi sistem transaksi:
1. Buat `class` bernama `Transaction`.
2. Buat exception khusus (`InsufficientStockException` dan `InvalidTransactionException`).
3. Implementasikan error handling untuk kasus:
    - Jumlah pesanan melebihi stok.
    - Produk tidak ditemukan.

**Hint:**  
Manfaatkan **exception handling**, **custom exception**, dan **error**.

---

## **Latihan 10: Callable Class**
**Brief:**  
Buat `class` bernama `AuthService` yang dapat digunakan sebagai callable.
1. Implementasikan method untuk memvalidasi user berdasarkan username dan password.
2. Jadikan `AuthService` callable dengan operator `call`.

**Hint:**  
Gunakan **callable class** dan **hashCode**.

---

## **Latihan 11: Pengelolaan Data Keranjang Belanja**
**Brief:**  
Buat `class` bernama `Cart` untuk mengelola data keranjang belanja. Tambahkan:
1. Atribut `items` berupa daftar `Product`.
2. Method `addItem(Product product)` untuk menambahkan produk ke keranjang.
3. Method `removeItem(int id)` untuk menghapus produk dari keranjang berdasarkan ID.
4. Method `calculateTotalPrice()` untuk menghitung total harga seluruh produk di keranjang.

**Hint:**  
Gunakan **list**, **getter/setter**, dan metode iterasi.

---

## **Latihan 12: Sistem Role Management**
**Brief:**  
Buat sistem pengelolaan role dengan `class` bernama `Role` yang memiliki atribut:
- `id` (int)
- `name` (String)

Buat juga `class` bernama `RoleManager` dengan fungsi:
1. `addRole(Role role)` untuk menambahkan role baru.
2. `removeRole(int id)` untuk menghapus role berdasarkan ID.
3. `findRoleByName(String name)` untuk mencari role berdasarkan nama.
4. Gunakan konsep **singleton pattern** untuk memastikan hanya ada satu instance `RoleManager`.

**Hint:**  
Pelajari konsep **singleton pattern** dan bagaimana menerapkannya dalam Dart.

---

## **Latihan 13: Sistem Pengaturan Konfigurasi**
**Brief:**  
Buat `class` bernama `Config` yang berfungsi untuk mengelola konfigurasi aplikasi. Tambahkan:
1. Atribut `settings` berupa map dengan key-value pair `String: dynamic`.
2. Method `setConfig(String key, dynamic value)` untuk menambahkan atau memperbarui konfigurasi.
3. Method `getConfig(String key)` untuk mendapatkan nilai konfigurasi.
4. Implementasikan konsep **immutable class** untuk memastikan nilai konfigurasi tidak dapat diubah setelah ditetapkan.

**Hint:**  
Gunakan **final fields**, **private constructors**, dan **getter** untuk membuat class immutable.

---

## **Latihan 14: Sistem Pemesanan Tiket (Lanjutan)**
**Brief:**
Buat `class` bernama `Ticket` dengan atribut berikut:
- `id` (int)
- `event` (String)
- `price` (double)
- `buyer` (String)

Tambahkan fungsi berikut:
1. `buyTicket(String buyer)` untuk menetapkan pembeli tiket.
2. `cancelPurchase()` untuk membatalkan pembelian tiket.
3. Buat **getter** untuk menampilkan informasi pembeli (jika ada).
4. Gunakan **toString()** untuk menampilkan informasi lengkap tiket.

**Hint:**
Gunakan konsep **getter**, **setter**, **toString()**, dan manipulasi field sederhana.

---

## **Latihan 15: Sistem Penjadwalan Tugas**
**Brief:**
Buat `class` bernama `TaskScheduler` yang memiliki atribut:
- `tasks` berupa daftar tugas (`List<Task>`).
- `Task` adalah `class` yang memiliki atribut `id`, `title`, `description`, dan `dueDate`.

Tambahkan fungsi berikut:
1. `addTask(Task task)` untuk menambahkan tugas baru ke dalam jadwal.
2. `removeTask(int id)` untuk menghapus tugas berdasarkan ID.
3. `getUpcomingTasks()` untuk mendapatkan daftar tugas yang memiliki tenggat waktu dalam 7 hari ke depan.

**Hint:**
Manfaatkan konsep **list filtering**, **custom class**, dan **DateTime**.

---