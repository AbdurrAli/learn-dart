import 'data/rectangle.dart';

void main() {
  var rectangle = Rectangle();
  rectangle.length = -1;
  print(rectangle.length);

  rectangle.width = 2;
  print(rectangle.width);
}