void main() {
  var numberData = 10;
  var booleanData = true;
  double doubleDataNumber = 10.9;

  // number (int, double) to string use toString() methods
  var convertedNumber = numberData.toString();

  // string to number (int, double) use int.parse()/double.parse()
  var convertedString = int.parse(convertedNumber);

  // number to number (int to double or double to int) use toInt() or toDouble()
  var convertedInt = convertedString.toInt();

  print(convertedInt);
  print(convertedString);
  print(convertedNumber);

  var convertedBoolToString = booleanData.toString();

  print(convertedBoolToString);

  var convertDoubleToInt = doubleDataNumber.toInt();

  print(convertDoubleToInt);
}
