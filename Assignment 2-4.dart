void main() {
  List number = [2, 2, 2, 4, 8, 6, 10, 23, 11, 10];
  number.sort();
  int smallNum = number.first;
  int largeNum = number.last;

  print("The Smallest Number is $smallNum");
  print("The Largest Number is $largeNum");
}
