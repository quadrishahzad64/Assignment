import 'dart:io';

void main() {
  print("Input number: ");
  int terms = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= terms; i++) {
    int cube = i * i * i;
    print("Number is: $i and cube of the $i is: $cube");
  }
}
