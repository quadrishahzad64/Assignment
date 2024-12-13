//Check if a number is even then check if its divisible by 5 or not & if a number is odd then //check if its divisible by 7 or not.

import 'dart:io';

void main() {
  print("Hi, please choose a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    if (number % 5 == 0) {
      print('$number is even and divisible by 5.');
    } else {
      print('$number is even and not divisible by 5.');
    }
  } else {
    if (number % 7 == 0) {
      print('$number is odd and divisible by 7.');
    } else {
      print('$number is odd and not divisible by 7.');
    }
  }
}
