void main() {
  List<int> originalList = [6, 9, 5, 4, 2, 3];

  List<int> sortedList = List.from(originalList)..sort();
  print('Original List: $originalList');
  print('Sorted List: $sortedList');
}
