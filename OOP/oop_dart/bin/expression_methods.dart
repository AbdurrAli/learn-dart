class CalculatorSummary {
  int valueA = 10;
  int valueB = 11;

  int sumMethods({ int valueC = 1}) => valueA + valueB * valueC;
}

void main() {
  var calculator = CalculatorSummary();
  print(calculator.sumMethods(valueC: 20));
}