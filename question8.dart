//Check if the number is even or odd? i.e : Even numbers are completely divisible by 2. //(2,4,6,8,10,….

import 'dart:io';

void main() {
  print("Hi, please choose a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("Chosen number is even");
  } else {
    print("Chosen number is odd");
  }
}
