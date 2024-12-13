void main() {
  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  Iterable<int> evenNumbers = originalList.where((number) => number % 2 == 0);
  print('Original List: $originalList');
  print('Even Numbers: ${evenNumbers.toList()}');
}
