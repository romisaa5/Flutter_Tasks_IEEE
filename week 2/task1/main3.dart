

// Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

import 'dart:io';

void main() {
  print("Enter the numbr:");
  int num = int.parse(stdin.readLineSync()!);
  print(' the divisors of $num are:');
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      print(i);
    }
  }
}
