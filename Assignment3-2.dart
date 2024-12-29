import 'dart:io';

void main() {
  print("Enter Number to Calculate Factorial");
  var number = stdin.readLineSync()!;
  var mnumber = int.parse(number);
  int factorial = 1;
  int i = 1;
  while (i <= mnumber) {
    factorial *= i;
    i++;
  }
  print('Factorial of $mnumber is $factorial');
}
