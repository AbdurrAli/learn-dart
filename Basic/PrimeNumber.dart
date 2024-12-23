void main() {
  var searchNum = 13;
  var primeNumber = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    31,
    37,
    41,
    43,
    47,
    53,
    59,
    61,
    67,
    73,
    79,
    83,
    89,
    97
  ];

  print("Bilangan prima diantara 1-100 : $searchNum");

  for (var i = 0; i < primeNumber.length; i++) {
    if (searchNum == primeNumber[i]) {
      print("$searchNum adalah bilangan prima ke- ${i + 1}");
      break;
    }
    print("$searchNum != ${primeNumber[i]}");
  }
}
