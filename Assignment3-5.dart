import 'dart:io';

void main() {
  bool isContinue = true;

  while (isContinue) {
    print("Enter Table No to Print:");
    var myTable = stdin.readLineSync()!;
    int dTable = int.parse(myTable);

    for (int i = 1; i <= 10; i++) {
      print("$dTable x $i = ${dTable * i}");
    }

    print("Do you want to continue [Y/N]?");
    var myYn = stdin.readLineSync()!;

    if (myYn == "n" || myYn == "N") {
      isContinue = false;
    } else {
      isContinue = true;
    }
  }
}
