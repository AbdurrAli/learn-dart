class Sum {

  int a;
  int b;

  Sum(this.a, this.b);

  int call() => a + b;

}

typedef Jumlah = Sum;

void main() {

  var jumlah = Jumlah(10, 10);
  print(jumlah());

}