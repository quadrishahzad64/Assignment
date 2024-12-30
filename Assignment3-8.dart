void main() {
  List<int> numbers = [10, -5, 3, -2, 8, -1, 4, -6];

  int sum = 0;
  int count = 0;

  for (int number in numbers) {
    if (number < 0) {
      sum += number;
      count++;
    }
  }
  if (count > 0) {
    double average = sum / count;
    print("The average of the negative numbers is: $average");
  } else {
    print("There are no negative numbers in the list.");
  }
}
