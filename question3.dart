//A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
//Number of classes held = 16,
//Number of classes attended = 10, and print percentage of class attended. Is student is allowed to sit in exam or not?

void main() {
  int classesHeld = 16;
  int classesAttended = 10;
  double percentageAttended = (classesAttended / classesHeld) * 100;
  print(
      'Percentage of class attended: ${percentageAttended.toStringAsFixed(2)}%');
  if (percentageAttended >= 75) {
    print('student’s attendance is not eligible for Exam.');
  } else {
    print('student’s attendance is eligible for Exam.');
  }
}
