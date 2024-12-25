void main() {
  String? someStringValue;

  int? convertStringValue =
      someStringValue != null ? int.parse(someStringValue) : null;

  print(convertStringValue);
}
