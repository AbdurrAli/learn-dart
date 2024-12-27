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
