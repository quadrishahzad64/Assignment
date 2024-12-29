void main() {
  var numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  var largeValue = numbers[0];

  for (var number in numbers) {
    if (number > largeValue) {
      print(number);
      largeValue = number;
    }
  }
  print('Largest value in the list is: $largeValue');
}
