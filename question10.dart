//Write a program that takes three numbers from the user and prints the greatest number //& lowest number.

import 'dart:io';

void main() {
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);
  print('Enter the third number:');
  double num3 = double.parse(stdin.readLineSync()!);
  double greatest = num1;
  double lowest = num1;
  if (num2 > greatest) {
    greatest = num2;
  }
  if (num3 > greatest) {
    greatest = num3;
  }
  if (num2 < lowest) {
    lowest = num2;
  }
  if (num3 < lowest) {
    lowest = num3;
  }
  print('The greatest number is: $greatest');
  print('The lowest number is: $lowest');
}
