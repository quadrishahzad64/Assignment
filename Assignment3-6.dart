void main() {
  String inputString = "I am Student of Batch 4";
  const String vowels = 'aeiouAEIOU';

  int count = 0;
  for (int i = 0; i < inputString.length; i++) {
    if (vowels.contains(inputString[i])) {
      count++;
    }
  }
  print("The number of vowels in the string are: $count");
}
