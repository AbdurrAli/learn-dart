class Constant{
  final int x;
  final int y;

  const Constant(this.x, this.y);

}

void main() {
  var immutableValue = const Constant(10, 10);
  var immutableValue2 = const Constant(10, 10);

  print(immutableValue == immutableValue2);
}