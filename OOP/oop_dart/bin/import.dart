import 'data/category.dart';

void main() {
  var category1 = Category('smartphone', 1241);
  var category2 = Category('smartphone', 1241);

  print(category1 == category2);
  print(category1.hashCode);
  print(category2.hashCode);

}