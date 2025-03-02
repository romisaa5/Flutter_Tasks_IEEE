
// Ask the user for a number and determine whether the number is even or not.
import 'dart:io';

void main() {
  print("Enter the numbr:");
  int num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    print(' $num is even');
  } else {
    print('$num is odd');
  }
}
