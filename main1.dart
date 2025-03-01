import 'dart:io';

void main() {
  print('Enter Num 1 :');
  int num1 = int.parse(stdin.readLineSync() ?? '0');
  print('Enter Num 2 :');
  int num2 = int.parse(stdin.readLineSync() ?? '0');
  Calcaulator calc = Calcaulator();
  calc.sum(num1, num2);
  calc.subtraction(num1, num2);
  calc.multiplication(num1, num2);
  calc.division(num1, num2);
}

class Calcaulator {
  void sum(int num1, int num2) {
    int Result = num1 + num2;
    print('Result of Sum = $Result');
  }

  void subtraction(int num1, int num2) {
    int Result = num1 - num2;
    print('Result of subtraction = $Result');
  }

  void multiplication(int num1, int num2) {
    int Result = num1 * num2;
    print('Result of multiplication = $Result');
  }

  void division(int num1, int num2) {
    int Result = num1 ~/ num2;
    print('Result of division = $Result');
  }
}
