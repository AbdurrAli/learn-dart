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
