void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> squaredList = numbers.map((number) => number * number).toList();
  print('Original list: $numbers');
  print('Squared list: $squaredList');
}
