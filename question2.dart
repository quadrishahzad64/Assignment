//2.	Take two variables and store age then using if/else condition to determine
//oldest and youngest among them.
void main() {
  int age1 = 25;
  int age2 = 30;

  if (age1 > age2) {
    print("The older is: $age1 years old.");
    print("The younger is: $age2 years old.");
  } else if (age1 < age2) {
    print("The older is: $age2 years old.");
    print("The younger is: $age1 years old.");
  } else {
    print("Both are the same age: $age1 years old.");
  }
}
