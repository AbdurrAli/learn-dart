# Learn Basic Dart Notes

## Data Type
In dart there are three type of data, number, string, boolean, map, list, and set.
- String are data type for storing text.
- Number are data type for storing number like integer and decimals(double).
- Boolean is a data type that can be storing 2 value, `true` and `false`.

To storing data number and string we need to initialize variable for storing the data.

``` dart
void main() {
    String someStringData = "Ali";

    int someIntegerData = 10;

    double someDoubleData = 10.5;

    bool someBooleanData = true;
}
```

## Dynamic
Sometimes we need to create variable that can store data with any type, no matter if we storing double, int, string or boolean. In dart we can achive that using `dynamic` variable, here some example to use dynamic:
``` dart
void main() {
    dynamic someIntValue = 10;
    dynamic someDoubleValue = 10.5;
    dynamic someBooleanValue = true;
    dynamic someStringValue = "Hello";
}
```

## Converting Data Type
Data that stored in variable actually can be converted into anther data type. There is 3 methods to convert data type based on its needs.

1. Number to number
   there are two ways to convert by its data type
   - int to double
   ``` dart
     void main() {
        var someIntValue = 10;

        // converting int to double
        var convertIntToDouble = someIntValue.toBouble(); 
        // ouput : 10.0 
    }
    ```
   - double to int
   ``` dart
   void main() {
    var someDoubleValue = 10.4;
    
    // converting double to int
    var converDoubleToInt = someDoubleValue.toInt();
    // output : 10 
   }

   ```

2. String to number
   same like before, in this case there are two ways of converting based on target (double or integer) by using `.parse()`.
   - String to number (int)
   ``` dart
   void main() {
    var someStringData = 10;

    // converting string to int
    var convertStringToInt = int.parse(someStringData); 
    // output : 10
   }
   ```
   - String to number (double)
   ``` dart
   void main() {
    var someStringData = "10.4";

    // converting string to double
    var convertStringToDouble = double.parse(someStringData);
    // output : 10.4
   }
   ```
3. Boolean to string
   In this case we can only converting from boolean to string by using `.toString()`, here some example code:
   ``` dart
   void main() {
    bool someBooleanData = true;
    
    // convert boolean into string data type 
    var convertIntoString = someBooleanData.toString();
    // output : true
   }
   ```
## Type Test Operator
Type test is operator that used to check a given object type in a runtime. To check we can use `as`, `is` and `is!`. Here are example to use type test operator.

> Note:
> `as` is a type casting, but it do force casting  

``` dart
void main() {
    int someIntValue = 10;
    double someDoubleValue = 12.4;

    var checkIntValue = someIntValue is int;
    var checkDoubleValue = someDoubleValue is! double;
    var forceCasting = someIntValue as double;
}
```

## List
List are data type that used to storing any type or specific data. In another language list are known as array data type (it has an index and value). To initialize list we need [] and <> to storing specific data type, here are example to initialize list in dart.
``` dart
void main() {

    // option 1 to create list
    List<String> dataName = ["joko", "ado". "eko"];

    // option 2 to create list
    var dataSum = <int> [1, 2, 4, 5];
}
```

 To do data manipulation in list we can use any methods to access data, adding data, change data and remove data. Here are data manipulation detail:
 - access data
 In list we can use index to access some data. here are some example:
 ``` dart
 void main() {
    var someDataList = <String> ["joko", "ado". "eko"];

    // accessing data using index[], in this case we access data at index 1
    print(someDataList[1]);
    // ouput : ado
 }
 ```
 - adding data
 Its also possible to adding some value inside list. Here are example to adding value inside list:
 ``` dart
 void main() {
    var someDataList = <String> ["joko", "ado". "eko"];

    // adding one name to list 
    someDataList.add("irpan");

    print(someDataList);
    // ouput: "joko", "ado". "eko", "irpan"
 }
 ```
 - change data
Since list has index system, we can easily change some specific value using index. Here are some example:
``` dart
void main() {
    var someDataList = <String> ["joko", "ado". "eko"];

    // change joko to aldi 
    someDataList[0] = "aldi";

    print(someDataList);
    // ouput: "aldi", "ado". "eko"
}
```
 - remove data
 We also can remove some data using index. Here are some example to removing data in list:
 ``` dart
 void main() {
    var someDataList = <String> ["joko", "ado". "eko"];

    // adding one name to list 
    someDataList.removeAt[0];

    print(someDataList);
    // ouput: "ado". "eko"
 }
 ```

 ## Set in Dart
  Set are quite same like list, but in set there are no index system. In set the data can’t duplicating, so there no redundant data. To initialize set, we can initialize like list before

```dart
void main () {
	// like this
	Set<int> setVariable = {};
	
	// or this
	var setVariableTwo = <String> {};
}
```

- Manipulating Data

```dart
void main () {
	var setVaribale = <String> {};
	
	setVariable.add("Joko");
	setVariable.add("Stephen");
	setVariable.add("Michele");
	setVariable.add("Jason");
	
	print(setVariable);
	// ouput : {Joko, Stephen, Michele, Jason}
	
	setVariable.remove("Stephen");
	print(setVariable);
	// output : {Joko, Michele, Jason}
	
}
```

## Map in Dart
Map are key-value pair, at a glance similar to list, key in map are like index in list but its not automatically incementing like index in list. In map we should entry key and value data type manually and even the key it self, we should entry that manually. Here are example to initialize map:

```dart
void main() {
	// Map initialize
  Map<int, String> daftarNama = {};

	// adding value
  daftarNama[1] = "daffa";
  daftarNama[2] = "joko";

	// show output
  print(daftarNama);

  daftarNama[2] = "mashud";

  print(daftarNama);

	// remove data using key
  daftarNama.remove(1);

  print(daftarNama.length);
  print(daftarNama);
}
```

## Symbol in Dart
Symbol are rarely used in flutter project. Symbol can used for const. To initialize symbol, you can write like this:

```dart
void main() {
	var contohsymbol1 = #Contoh;
	Symbol contohSymbol2 = Symbol("Contoh Symbol 2");
	
  print(contohSymbol1);
  // output : Symbol("Contoh")
  
  print(contohSymbol2);
  // output : Symbol("Contoh Symbol 2")
}
```

## Conditional Case in Dart

### If Else 
This syntax are available in every language programming to create branch of condition, here are some example to create conditional case using `if else`:
``` dart
void main() {
    var nilai = 100;
    var absen = 80;

    if(nilai >= 75 && absen >= 75) {
        print("kamu lulus dari matakuliah ini");
    } else {
        print("kamu belum lulu dari matakuliah ini");
    }

    // ouput : kamu lulus dari matakuliah ini
}
```

### Else if
Sometimes we need to create more condition using `if else`, to answer that case, we can use `else if`. Here are some example to create more condition using `else if`:
```dart
void main() {
    var nilai = 80;

    if (nilai >= 90) {
        print("A");
    } else if (nilai >= 70) {
        print("B");
    } else if (nilai >= 60) {
        print("C");
    } else {
        print("D");
    }

    // ouput : B
}
```

### Switch Case
Switch are pretty smillar to `if else`, but `switch case` are more simple. Here are some example to use `Switch case`
```dart
void main() {
    var nilai = "A";

    Switch(nilai) {
        case "A":
            print("Nilai kamu baik sekali");
            break;
        case "B":
            print("Nilai kamu baik");
            break;
        case "C":
            print("Nilai kamu baik");
            break;
        case "D":
            print("Nilai kamu buruk sekali");
            break;
    }
    // output : Nilai kamu baik sekali
}
```

## Null
Null are data type that indicates the value is empty, by default variables are empty and we need to store with some value either its `string` value or `number` value or any type, if we not put some value inside variable we cant use that variable. But if we need to create null variable we need to use ? in null variable like this:
```dart
void main() {
    int? someNullVar = null;

    print(someNullVar);
    // output: Null
}
```

## Ternary Operator
Ternary opertor are simple opertor from if else, it usually used for simple conditional check with 1 line code. Here are example of ternary operator:
```dart
void main() {
    var nilai = 100;
    var nilaiChecker = nilai >= 75 ? "kamu lulus" /* true condition */ : "kamu belum lulus" /* false condition */;
}
```

## Null Safety
In manyu programming language like java, kotlin and many more there one problem that usually many programmer get, that is NullPointerException. This condition caused when we access some data but the data is null. Now dart support Null Safety to prevent programmer get NullPointerException. Here are exmple to null safety
```dart
void main() {
    int? someNullVar;
    print(someNullVar?.toDouble());
}
```

## Default Value
Sometimes we need to convert nullable type to non nullable data type, but if the data is null we need some default value to place with. Here are example to put default value.
```dart
void main() {
    String? someStringValue;

    var guestName = someStringValue ?? "guest"; // if null put geust as default value
}
```
## Accessing Nullable Member
To access nullable member, dart will remind us to create null checker by default. But there is a way to access nullable member by using `?.`. Here are some example.
```dart
void main() {
    String? someStrnigValue;

    var anotherStringValue = int?.parse(someStringValue);
}
``` 

## For Loop in Dart
For loop is looping methods, in for loop there are some part like initial statement, condition and post statement. Here are some example.

> Note 
> condition and post statement are not neccessary, if condition is'nt filled the condition is alwas true

```dart
void main() {
    for (var counter = 1; counter <= 10; counter++) {
        print("perulangan ke-$counter");
    }
}
```

## While Loop
Same like for loop, this while loop are used to looping too, but while loop are simplified version of for loop, because in here are no using initial statement and post statement and just using condition. Here are some example.
```dart
void main() {
    var counter = 1;

    while(counter <= 10) {
        print("perulangan ke-$counter");
        counter++;
    }
}
```

## Do While Loop
Still same like While loop but reversed. In do while condition checking after looping are executed. Here are some example.
```dart
void main() {
    var counter = 1;
    do {
        print('perulangan ke-$counter');
        counter++;
    } while (counter <= 10);
}
```

## Break and Continue
Break can used to stop all process in looping but continue are used to skiping some looping and going next to another loop. Here are example:
```dart
void main() {
    var counter = 1;

    // break
    while(true) {
        print("perulangan ke-$counter");
        counter++;

        if (counter > 10) {
            break;
        }
    }
}
```
```dart
void main() {
    // continue
    for (counter = 1; counter <= 10; counter++) {
        if (counter % 2 == 0) {
            continue;
        }
        print ('perulangan ke-$counter');
    }
}
```

## For In
Sometimes we need to access list using loop process, with normal approach of looping like use for loop are inefficient, instead use for loop we can use for in to looping inside list. Here are some example:
```dart
void main() {
    List<String> someStringList = ["Joko", "Syaiful", "Aldi"];

    for (nameList in someStringList) {
        print(nameList);
    }
}
```


## Function
Function is a block code that we can use to run the program. To create function we can use `void` following with `()` and `{}` like this:
We can call a function that we are created before using function name and `()` like this
```dart
// main function
void main() {
    // rest of code
    someFunc();
}

void someFunc() {
    print("Hi, im function");
}
```

## Function with Params
In function we can send an information that we can call, to use that we need an params inside `()` like this
```dart
void sayHello(String firstName, String lastName) {
    print('Hi, $firstName $lastName');
}

void main() {
    sayHello('Joko', 'Supriyanto');
}
```

## Optional Params
By default params are must if we create an function, there are way to make params being optional by using `[]`.

```dart
void sayHello(String firstName, [String? lastName]) {
    print('Hi, $fisrtName $lastName')
}

void main() {
    sayHello('Joko')
}
```

## Default Value in Optional Params
Optional params are nullable, to make it non nullable we can create default value like this.
```dart
void sayHello(String firstName, [String lastName = '']) {
    print('Hi, $fisrtName $lastName')
}

void main() {
    sayHello('Joko')
}
```

## Named Params
By default when we calling function with param, we need to write params with similar position to its function. There is a way to using param but we dont need to worry about params position by using named params

```dart
void sayHello({String? firstName, String? lastName}) {
    print('Hi, $fisrtName $lastName')
}

void main() {
    sayHello(firstName: 'Joko')
}
```



