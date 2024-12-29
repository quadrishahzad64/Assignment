import 'dart:io';

void main() {
  List<int> numbers = [];
  print("How many numbers do you want to enter?");
  String sizeInput = stdin.readLineSync()!;
  int size = int.parse(sizeInput);

  for (int i = 0; i < size; i++) {
    print("Enter number ${i + 1}:");
    var input = stdin.readLineSync();
    int myNum = int.parse(input!);
    numbers.add(myNum);
  }
  print("Your input Created List = $numbers");

  for (final evennum in numbers) {
    if (evennum.isEven) {
      print('$evennum');
    }
  }
}
