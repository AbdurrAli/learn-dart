class Rectangle{
  int _width = 0;
  int _length = 0;

  int get width {
    return _width;
  }

  set width(int value) {
    if (value >= 1) {
      _width = value;
    }
  }

  int get length {
    return _length;
  }

  set length(int value) {
    if (value >= 1) {
      _length = length;
    }
  }
}