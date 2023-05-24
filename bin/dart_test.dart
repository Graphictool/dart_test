

void main ()
{

  String studentName = "Walid Ibna Rakib";

  String grade = studentGrade();

  print("$studentName's grade is: $grade");

}

  String  studentGrade() {

    int testScore = 85;

  if (testScore > 100 || testScore < 0) {
    return("Invalid Grade") ;

  } else if (testScore >= 90 && testScore <= 100) {
    return('A');

  } else if (testScore >= 80 && testScore <= 89) {
    return('B');

  } else if (testScore >= 70 && testScore <= 79) {
    return('C');

  } else if (testScore >= 60 && testScore <= 69) {
    return('D');

  } else if (testScore >= 0 && testScore <= 59) {
    return('F');

  }

  return studentGrade();
}
