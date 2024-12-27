class Shape{

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