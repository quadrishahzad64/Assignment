//Write a program to convert Celsius to Fahrenheit .i.e: Temperature in degrees //Fahrenheit (°F) = (Temperature in degrees Celsius (°C) * 9/5) + 32
import 'dart:io';

void main() {
  print("Enter temperature in Celsius:");
  var input = stdin.readLineSync()!;
  double celsius = double.parse(input);
  double fahrenheit = (celsius * 9 / 5) + 32;
  {
    print('$celsius °C is equal to $fahrenheit °F');
  }
}
