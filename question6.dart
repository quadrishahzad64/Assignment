//Write a program to check whether an alphabet is a vowel or consonant
import 'dart:io';

void main() {
  print('Please enter an alphabet:');
  var input = stdin.readLineSync()!;

  if (input == "a" ||
      input == "e" ||
      input == "i" ||
      input == "o" ||
      input == "u") {
    print("you entered vowel");
  } else if (input != "a" ||
      input != "e" ||
      input != "i" ||
      input != "o" ||
      input != "u") {
    print("you entered Consonant");
  }
}
