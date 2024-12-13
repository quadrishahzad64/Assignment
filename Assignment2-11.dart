List<dynamic> getFirstNElements(List<dynamic> originalList, int n) {
  if (n > originalList.length) {
    return originalList;
    print(originalList);
  }
  return originalList.sublist(0, n);
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(getFirstNElements(numbers, 5));
  print(getFirstNElements(numbers, 3));
  print(getFirstNElements(numbers, 15));
}
