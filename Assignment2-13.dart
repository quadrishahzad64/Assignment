void main() {
  // Example usage
  List<int> originalList = [1, 2, 2, 3, 4, 4, 5, 1, 6, 3];
  List<int> uniqueList = originalList.toSet().toList();
  
  print('Original List: $originalList');
  print('Unique List: $uniqueList');
}
