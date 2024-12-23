void main() {
  List<int> listInt = [];

  var listString = <String> [];

  listString.add("jhon");
  listString.add("doe");
  listString.add("joko");
  listString.add("Mashud");

  listInt.add(1);
  listInt.add(2);
  listInt.add(3);

  print(listInt);
  print(listString);
  print(listString.length);

  listString.removeAt(2);
  print(listString);
  print(listString[2]);

}