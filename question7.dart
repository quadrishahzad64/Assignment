//Create a marksheet using operators of at least 5 subjects and output should have //Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
//i.e: Percentage should be rounded upto 2 decimal places only.

void main() {
  String studentName = 'Syed Shahzad Quadri';
  String studentRollNumber = '181619';
  String studentClass = 'Flutter-Batch 4';

  // Marks of 5 subjects
  double englishMarks = 60;
  double mathMarks = 80;
  double scienceMarks = 58;
  double historyMarks = 75;
  double geographyMarks = 79;
  double totalMarks =
      englishMarks + mathMarks + scienceMarks + historyMarks + geographyMarks;
  double percentage = (totalMarks / 500) * 100;
  percentage = double.parse(percentage.toStringAsFixed(2));

  // Determine grade
  String grade;
  if (percentage >= 90) {
    grade = 'A+';
  } else if (percentage >= 80) {
    grade = 'A';
  } else if (percentage >= 70) {
    grade = 'B';
  } else if (percentage >= 60) {
    grade = 'C';
  } else {
    grade = 'F';
  }

  // Print marksheet
  print('''
  _______________________________
  |             MARKSHEET       |
  |________________________________|
  | Student Name: $studentName  |
  | Student Roll Number: $studentRollNumber |
  | Class: $studentClass          |
  |________________________________|
  | Subject          | Marks      |
  |________________________________|
  | English          | $englishMarks    |
  | Math             | $mathMarks       |
  | Science          | $scienceMarks    |
  | History          | $historyMarks    |
  | Geography        | $geographyMarks  |
  |________________________________|
  | Total Marks: $totalMarks/500  |
  | Percentage: $percentage%       |
  | Grade: $grade                    |
  |________________________________|
''');
}
