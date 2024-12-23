void main() {
  var setNames = <String> {};

  setNames.add("jhon");
  setNames.add("doe");
  setNames.add("joko");
  setNames.add("Mashud");

  print(setNames);
  print(setNames.length);
  
  setNames.remove("joko");
  print(setNames);
  print(setNames.length);

}