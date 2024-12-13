void main() {
  List<int> orginalList = [-3, 0, 5, -2, 8, -1, 10, 15, 3, 4];
  List<int> positiveList = orginalList.where((number) => number > 0).toList();
  print(positiveList);
}
