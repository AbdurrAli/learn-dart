# Object Oriented Programming with Dart : A Notes

## Object

Objek adalah data yang berisi Properties dan Methods, bahkan semua data yang ada di dart merupakan
sebuah objek. untuk membuat object kita hanya perlu untuk membuat variable dengan memanggil classnya
seperti ini:

```dart
class Person {
  // rest of Methods
}

void main() {
  // call class Person() like this
  Person newPerson = Person();

  // or like this
  var newPerson2 = Person();
}
```

## Class

Class adalah blueprint atau cetakan untuk membuat objek, untuk membuat sebuah objek perlu membuat
class terlebih dahulu. Class berisi deklarasi semua properti dan methods/function yang dimiliki
objek. Sebuah class dapat membuat object tanpa batas. Untuk membuat class, kita hanya perlu
membuatnya dengan kata kunci class dan kemudian diikuti dengan nama classnya, contohnya seperti ini:

```dart
class Person {
  // rest of methods and properties
}
```

## Field

Field/Properties/Attribute adalah data yang disisipkan di dalam object. Untuk menyisipkan data kita
perlu untuk mendeklarasikan data apa saja yang dapat dimiliki oleh objek tersebut di dalam class.
Membuat field sama dengan ketika kita membuat variable namun di buatnya di dalam class dan untuk
mengakses informasi dari data yang sudah di sisipkan pada class cukup panggil saja nama variablenya
atau nama fieldnya.

```dart
class Student {
  String name = "Joko";
  String? univ = "Universitas Indonesia";
  final addr = "Jakarta";
}

void main() {
  var student1 = Student();

  print(student1.name); // Joko
  print(student1.univ); // Universitas Indonesia
  print(student1.addr); // Jakarta
}
```

Nilai pada field dapat di rubah atau dimanipulasi, dengan memasukkan kembali nilai baru kedalam
field. Contohnya seperti ini :

```dart
class Student {
  String name = "Joko";
  String? univ;
  final addr = "Jakarta";
}

void main() {
  var student1 = Student();
  student1.name = "Rizal";
  student1.univ = "Universitas Indonesia";

  print(student1.name); // Rizal
  print(student1.univ); // Universitas Indonesia
  print(student1.addr); // Jakarta
}
```

## Methods or Function

Selain menambahkan field pada class, kita juga bisa menambahkan methods di dalam object. Untuk
membuat dan memanggil methods sama seperti membuat function biasa dan memanggilnya pun sama seperti
memangging sebuah field, yaitu dengan menggunakan `.` yang kemudian di ikuti dengan nama methodsnya.
Contohnya seperti ini:

```dart
class Student {
  var name = 'Joko';
  var univ = 'Telkom University';
  var addr = 'Jakarta';

  String sayHello({String names = ''}) {
    return 'Hi, my name is $names $name, im from $univ $addr';
  }
}

void main() {
  var student = Student();
  print(student.sayHello());

  var student2 = Student();
  student2.name = '';
  print(student2.sayHello(names: 'Farhan'));
}
```

Apabila function body memiliki isi yang singkat, misalnya hanya untuk melakukan penjumlahan
sederhana, maka bisa menggunakan methods expression body. Penggunaan function ini sangat sederhana,
mirip seperti menggunakan anonymous function, untuk pemanggilannya pun masih sama seperti memanggil
methods pada biasanya. Contohnya seperti ini:

```dart
class CalculatorSummary {
  int valueA = 10;
  int valueB = 11;

  int sumMethods({ int valueC = 1}) => valueA + valueB * valueC;
}

void main() {
  var calculator = CalculatorSummary();
  print(calculator.sumMethods(valueC: 20));
}
```

Terkadang kita ingin membuat methods baru tanpa harus mengubah atau menambah methods pada class
utama, hal ini bisa menggunakan extension methods. Penggunaan extension methods sama seperti membuat
class namun menggunakan kata kuncil `extension` dan `on`. Contohnya seperti ini:

```dart
import 'expression_methods.dart';

extension CalculatorMixed on CalculatorSummary {
  int subtractMethods({int valueC = 1}) => valueA - (-valueB * valueC);
}

void main() {
  var calculator = CalculatorSummary();
  print(calculator.subtractMethods(valueC: 12));
}
```

## Operator Overloading or Operator Methods

Operator methods adalah methods atau function yang bersifat seperti operator, methods ini dapat
berguna untuk membuat function yang dapat memanipulasi data angka. Untuk menggunakan operator
methods cukup mudah dan sama seperti membuat methods sperti biasa, hanya perlu menggunakan kata
kunci operator. Contoh penggunaan operator
overloading adalah sebagai berikut:

```dart
class Money {
  int totalMoney = 0;

  Money operator +(Money money) {
    var moneyDeposit = Money();
    moneyDeposit.totalMoney = totalMoney + money.totalMoney;
    return moneyDeposit;
  }

  Money operator -(Money money) {
    var moneyDeposit = Money();
    moneyDeposit.totalMoney = totalMoney - money.totalMoney;
    return moneyDeposit;
  }
}

void main() {
  var wallet1 = Money();
  wallet1.totalMoney = 10;

  var wallet2 = Money();
  wallet2.totalMoney = 40;

  var wallet3 = wallet2 + wallet1;
  print(wallet3.totalMoney);
}
```

## Constructor

Saat kita membuat sebuah class, maka sebetulnya kita mirip seperti memanggil methods karena kita
menggunakan tanda kurung seperti ini `()`. Di dalam sebuah class kita bisa membuat constructor.
Constructor adalah methods yang akan di panggil ketika pertama kali object dibuat. Constructor sama
seperti methods namun tidak menggunakan kata kunci void atau retrun value. Dengan constructor juga
kita bisa mengurangi kode untuk mengubah nilai field pada class. Penggunaan constructor juga sama
seperti menggunakan class pada sebelumnya, namun karena ada parameter yang di tambahkan jadi kita
harus memasukkan informasi untuk parameter yang sudah dimasukkan. Contoh penggunaan constructor:

```dart
class RectangleAndSquare {
  int width = 0;
  int height = 0;

  RectangleAndSquare.rect(this.width, this.height);

  RectangleAndSquare.square(int size) {
    height = size;
  }

  int rectangleAreaFormula() {
    return width * height;
  }

  int squareAreasFormula() {
    return height * height;
  }
}

void main() {
  var rectFormulas = RectangleAndSquare.rect(10, 20);
  print(rectFormulas.rectangleAreaFormula());

  var squareFormulas = RectangleAndSquare.square(10);
  print(squareFormulas.squareAreasFormula());
}

```

## Variable Shadowing

Variable shadowing adalah kejadian dimana ketika teradapat methods yang memiliki nama parameter yang
sama persis dengan field di scope class yang sama. Saat terjadi hal ini field di class tersebut
tidak akan terbaca. Cara menghindari kejadian ini adalah dengan cara membuat nama parameter yang
berbeda dari field di atas. Contohnya :

```dart
// Field Shadowing
class Person {
  String? name;
  String? addr;

  Person(String name, String addr) {
    name = name; // refer to it constructor not field in upper scope
    addr = addr; // refer to it constructor not field in upper scope
  }

/*
  * Try to use different params name
  * Don't use same like upper field
  * e.g paramName, paramAddr
  * */

}

```

## This Keyword

Saat kita membuat kode di dalam constructor atau methods di dalam class, kita bisa menggunakan kata
kunci this untuk mengakses object saat ini, this juga dapat menjadi cara untuk menghindari variable
shdawoing. Contoh penggunaan this adalah sebagai berikut :

```dart
class RectangleAndSquare {
  int width = 0;
  int height = 0;

  RectangleAndSquare.rect(int width, int height) {
    this.width = width;
    this.height = height;
  }

  RectangleAndSquare.square(int height) : this.height = height;


  int rectangleAreaFormula() => width * height;

  int squareAreasFormula() => height * height;

}

void main() {
  var rectFormulas = RectangleAndSquare.rect(10, 20);
  print(rectFormulas.rectangleAreaFormula());

  var squareFormulas = RectangleAndSquare.square(10);
  print(squareFormulas.squareAreasFormula());
}
```

## Initializing Formal Parameter

Ketika kita membuat constructor, biasanya kita membuat parameter yang hanya digunakan untuk mengubah
nilai yang ada difield. Pada kasus ini kita bisa menggunakan fitur formal parameter, dimana
parameter langsung menggunakan nama field yang akan diubah. Cara menggunakan fitur ini dengan
menggunakan kata kunci this yang di ikuti dengan nama field yang ingin diubah tanpa perlu
menggunakan tipe data. Fitur formal parameter ini hanya berguna untuk membuat constructor dan tidak
akan bekerja pada methods. Contoh penggunaan formal parameter adalah seperti ini:

```dart
class RectangleAndSquare {
  int width = 0;
  int height = 0;

  RectangleAndSquare.rect(this.width, this.height);

  // using formal parameter

  RectangleAndSquare.square(int size) {
    height = size;
  }

  int rectangleAreaFormula() {
    return width * height;
  }

  int squareAreasFormula() {
    return height * height;
  }
}

void main() {
  var rectFormulas = RectangleAndSquare.rect(10, 20);
  print(rectFormulas.rectangleAreaFormula());

  var squareFormulas = RectangleAndSquare.square(10);
  print(squareFormulas.squareAreasFormula());
}
```

## Named Constructor

Membuat constructor pada dart hanya bisa dibuat satu buah saja, kita tidak bisa membuat lebih dari
satu constructor. Namun pada dart terdapat fitur yang bernama named constructor, dimana kita bisa
membuat constructor lebih dari satu dengan nama yang berbeda. Untuk membuat named constructor kita
bisa menggunakan nama class yang kemudian diikuti dengan nama constrctornya seperti ini:

```dart
class RectangleAndSquare {
  int width = 0;
  int height = 0;

  // .rect are named constructor
  RectangleAndSquare.rect(this.width, this.height);

  // .square are named constructor
  RectangleAndSquare.square(int size) {
    height = size;
  }

  int rectangleAreaFormula() {
    return width * height;
  }

  int squareAreasFormula() {
    return height * height;
  }
}

void main() {
  var rectFormulas = RectangleAndSquare.rect(10, 20);
  print(rectFormulas.rectangleAreaFormula());

  var squareFormulas = RectangleAndSquare.square(10);
  print(squareFormulas.squareAreasFormula());
}
```

Untuk menggunakan named constructor kita hanya perlu memanggil named constructor seperti ini:

```dart
void main() {
  // calling named constructor
  var rectFormulas = RectangleAndSquare.rect(10, 20);
  print(rectFormulas.rectangleAreaFormula());

  // calling named constructor
  var squareFormulas = RectangleAndSquare.square(10);
  print(squareFormulas.squareAreasFormula());
}
```

## Redirecting Constructor and Named Constructor

Saat membuat named constructor, kita bisa memanggil default constructor, atau istilahnya adalah
melakukan redirecting constructor. Cara membuat redirect constructor adalah dengan menambahkan titik
dua `:` kemudian diikuti dengan memanggil this(parameter). dimana this ini akan mengakses ke default
constructor. Namun redirect constructor tidak memiliki body. Fitur ini juga bisa di gunakan pada
named constructor contohnya adalah seperti ini:

```dart
class Product {
  String? name;
  double? price;
  String? description;

  Product(this.name, this.price, this.description);


  // redirecting constructor
  Product.productJustName(String name) : this(name, 0.0, '');

  Product.productJustPrice(double price) : this('', price, '');

  Product.productJustDesc(String desc) : this('', 13.0, desc);

  // redirecting named constructor
  Product.productSmartphone(String name) : this.productJustName('xiaomi');

  // redirecting constructor
  Product.defaultProduct() : this('unkown', 0.0, 'no desc');

  Product.filledProduct(Map<String, dynamic> json)
      : name = json['name'] ?? 'Unknown',
        price = json['price'] ?? 0.0,
        description = (json['description'] as String?)!.isEmpty
            ? 'no info are given'
            : json['description'];
}

void main() {
  var defaultProduct = Product.defaultProduct();
  print(defaultProduct.name);
  print(defaultProduct.price);
  print(defaultProduct.description);


  var product = Product.filledProduct({
    'name': 'smartphone',
    'price': 10.000,
    'description': ''
  });

  print(product.name);
  print(product.price);
  print(product.description);
}
```

## Initializer List

Saat membuat constructor atau named constructor, terdapat fitur yang bernama initializer list. Fitur
ini merupakan tempat dimana kita bisa mengubah field pada object, sebelum block body constructor,
dengan fitur ini mengubah field menjadi lebih mudah dibandingkan mengubahnya pada body constructor
dan dapat menghindari variable shawoding. Contoh menggunakan initializer list adalah seperti ini.

```dart
class Name {
  String? firstName;
  String? lastName;
  String? fullName;

  /* using initializer list to change
  first name and last name
  by splitting full name
  */
  Name(this.fullName)
      : firstName = fullName?.split(" ")[0],
        lastName = fullName?.split(" ")[1] {
    print("Createa new users");
  }
}

void main() {
  var userName = Name('Abdurrahman Ali');
  print(userName.fullName); // Abdurrahman Ali
  print(userName.firstName); // Abdurrahman
  print(userName.lastName); // Ali
}

```

## Constant Constructor

Pada saat kita butuh untuk membuat class yang tidak pernah berubah datanya atau immutable data, ada
baiknya kita membuat constructor dalam bentuk const. Dart mendukung untuk kita membuat class yang
datanya immutable dengan menggunakan keyword const dan field yang diberikan keyword final. Contoh
membuat constant constructor adalah sebagai berikut:

```dart
class Constant {
  final int x;
  final int y;

  const Constant(this.x, this.y);

}

void main() {
  var immutableValue = const Constant(10, 10);
  var immutableValue2 = const Constant(10, 10);

  print(immutableValue == immutableValue2); // true
}
```

## Factory Constructor

Factory constructor adalah sebuah fitur dimana kita bisa membuat constructor untuk membuat objek
baru, namun logika cara pembuatan objek barunya bisa kita sesuaikan dengan yang diinginkan. Untuk
membuat factory constructor kita bisa menggunakan kata kunci `factory`. Berikut adalah cara membuat
factory constructor.

```dart
class Database {

  Database() {
    print('Create new database');
  }

  static Database database = Database();

  factory Database.get() {
    return database;
  }

}

void main() {
  var database1 = Database.get();
  var database2 = Database.get();

  print(database1 == database2);
}
```

## Cascade Notation

Cascade notation merupakan operator yang bisa digunakan untuk memberikan beberapa operasi pada objek
yang sama. Ada dua jenis cascade notation, yaitu .. (digunakan non-nullable) dan ?.. (digunakan
untuk nullable). Beirkut adalah contoh menggunakan cascade notation untuk mengubah field pada sebuah
objek.

```dart
class User {
  String? name;
  String? addr;
  int? age;
}

User? createNewUsers() {
  return null;
}

void main() {
  // non-nullable cascade
  var user1 = User()
    ..name = 'Ali'
    ..addr = 'Serang'
    ..age = 21;

  print(user1.name);
  print(user1.addr);
  print(user1.age);

  // nullable cascade
  User? user2 = createNewUsers()
    ?..name = 'Ali'
    ..addr = 'Serang'
    ..age = 21;

  print(user2?.name);
  print(user2?.addr);
  print(user2?.age);
}
```

## Inheritance

Inheritance atau pewarisan adalah kemampuan untuk menunrunkan sebuah class (kemampuan/methods ataupu
field) ke class lain, atau
dengan kata lain kita membuat class parent dan class child. Class child hanya dapat memiliki satu
parent dan class parent dapat memiliki banyak child. Untuk melakukan pewarisan kita dapat
menggunakan kata kunci extends. Berikut adalah contoh untuk melakukan pewarisan:

```dart
// parent class
class Manager {
  String? names;

  void sayHello(String name) {
    print('Hi $names, my name is $name');
  }
}

// child class
class VicePrecident extends Manager {
  // rest of class
}

void main() {
  // calling parent class
  var manager = Manager()
    ..names = 'Aldi';
  manager.sayHello('Mashud'); // Hi Aldi, my name is Mashud

  // calling child class
  var vp = VicePrecident()
    ..names = 'Kuro';
  vp.sayHello('Shiro'); // Hi Kuro, my name is Shiro
}

```

## Methods Overriding

Methods overriding adalah kemampuan mendeklarasikan ulang method pada child class yang sudah ada di
parent class. Ketika melakukan methods overriding pastikan nama methods harus sama dengan method
yang ingin di override pada parent classnya. Contoh melakukan methods overriding:

```dart
// parent class
class Manager {
  String? names;

  // Parent methods
  void sayHello(String name) {
    print('Hi $names, my name is $name and im a manager');
  }
}

// child class
class VicePrecident extends Manager {
  // rest of class

  // override methods
  @override // in dart we should use annotation @override
  void sayHello(String name) {
    print('Hi $names, my name is $name and im vice manager');
  }
}

void main() {
  // calling parent class
  var manager = Manager()
    ..names = 'Aldi';
  manager.sayHello('Mashud');
  // Hi Aldi, my name is Mashud and im a manager

  // calling child class
  var vp = VicePrecident()
    ..names = 'Kuro';
  vp.sayHello('Shiro');
  // Hi Kuro, my name is Shiro and im vice manager
}
```

## Field Overriding

Filed overriding adalah kemampuan mendeklarasikan ulang field pada child class dari field yang sudah
ada di parent class. Sama seperti methods overriding, namun pada field. Berikut cara melakukan field
overriding.

```dart
class Person {
  String name = 'person';

  void sayHello(String name) {
    print('Hi ${this.name}, my name is $name');
  }
}

class OtherPerson extends Person {
  @override
  String name = 'other person';
}

void main() {
  var person = Person();
  person.sayHello('zaki');

  var otherPerson = OtherPerson();
  otherPerson.sayHello('ahmad');
}
```

## Super Keyword

Jika kita terlanjur melakukan override sebuah method yang ada di parent dan kita ingin mengaksesnya
maka kita bisa menggunakan keyword super. Keyword ini dapat membantu untuk mengakses field ataupun
method yang sudah terlanjur di override. Berikut adalah cara menggunakan keyword super:

```dart
class Shape {

  int getCorner() {
    return 0;
  }

}

class Rectangle extends Shape {

  @override
  int getCorner() {
    return 4;
  }

  int getShapeCorner() {
    return super.getCorner();
  }

}

void main() {
  var rect = Rectangle();
  print(rect.getCorner()); // 4
  print(rect.getShapeCorner()); // 0


}
```

## Super Constructor

Keyword super tidak hanya bisa digunakan untuk mengakses field dan juga methods dari parent, namun
bisa juga digunakan untuk mengakses constructor yang pada pada parent, cara menggunakan super untuk
akses constructor hanya dapat dilakukan dengan redirecting. Berikut adalah cara akses constructor
menggunakan keyword super:

> Note
> Ketika kita membuat constructor yang memiliki parameter pada class parent, kita wajib menyebutkan
> parameter yang ada di constructor di parent.

```dart
class Manager {
  String? name;

  Manager(this.name);

  void sayHello(String name) {
    print('Hi $name, my name is ${this.name}');
  }
}

class ViceManager extends Manager {
  ViceManager(String super.name);
}

void main() {
  var vp = ViceManager('Ali');
  vp.sayHello('Ahmad');
}
```

## Polymorphism

Polymorphism adalah kemampuan sebuah object berubah bentuk menjadi bentuk lain, kemampuan ini erat
dengan inheritance. Polymorphism dapat bekerja tidak hanya pada object saja, namun pada methods
juga. Berikut adalah contoh polymorphism:

```dart
class Employee {
  String? name;

  Employee(this.name);
}

class Manager extends Employee {
  Manager(super.name);
}

class ViceManager extends Manager {
  ViceManager(super.name);
}

void sayHello(Employee employee) {
  print('Hi, my name is ${employee.name}');
}

void main() {
  sayHello(Employee('Eko')); // as Employee
  sayHello(Manager('Aldi')); // as Manager
  sayHello(ViceManager('Ahmad')); // as ViceManager

  // Polymorph are many form -> banyak bentuk
  // Dengan syarat masih satu turunan dengan parent -> Employee
}
```

## Type Check and Casts

Saat menggunakan polimorph, kadang kita ingin melakukan konversi tipe data ke tipe data aslinya.
Namun agar aman, sebelum melakukan konversi pastikan kita melakukan type check dengan menggunakan
kata kunci is dan untuk melakukan konversi tipe data objek kita bisa menggunakan kata kunci as.
Contoh melakukan type check dan cast object data

```dart
class Employee {
  String? name;

  Employee(this.name);
}

class Manager extends Employee {
  Manager(super.name);
}

class ViceManager extends Manager {
  ViceManager(super.name);
}

void sayHello(Employee employee) {
  if (employee is ViceManager) {
    ViceManager viceManager = employee as ViceManager;
    print('Hi im VP, my name is ${viceManager.name}');
  } else if (employee is Manager) {
    Manager manager = employee as Manager;
    print('Hi im manager, my name is ${manager.name}');
  } else {
    print('Hi im employee, my name is ${employee.name}');
  }
}

void main() {
  sayHello(Employee('Eko'));
  sayHello(Manager('Aldi'));
  sayHello(ViceManager('Ahmad'));
}
```

## Import

Import adalah kemampuan untuk menggunakan class, function atau variable di file yang berbeda. Import
sangat cocok digunakan ketika kode program kita sudah banyak dan ditempatkan di banyak file. Berikut adalah contoh untuk melakukan import

```dart
// source class file
// located in data/
class Category {
  int? id;
  String? name;

  Category(this.name, this.id);
}
```

```dart
// main program
import 'data/category.dart';

void main() {
  var category = Category('smartphone', 1241);

  print(category.id); // 1241
  print(category.name); // smartphone
}
```

## Abstract
