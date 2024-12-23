void main() {
  List<int> myNumber = [1, 3, 5, 5, 5];
  print("jumlah dari list adalah ${sumNum(myNumber)}");
}

int sumNum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}
