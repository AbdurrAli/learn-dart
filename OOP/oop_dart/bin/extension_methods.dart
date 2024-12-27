import 'expression_methods.dart';

extension CalculatorMixed on CalculatorSummary {
  int subtractMethods({int valueC = 1}) => valueA - ( - valueB * valueC);
}

void main() {
  var calculator = CalculatorSummary();
  print(calculator.subtractMethods(valueC: 12));
}