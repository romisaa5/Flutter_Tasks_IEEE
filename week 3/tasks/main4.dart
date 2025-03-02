//  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] , b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
//  and write a program that returns a list that contains only the elements that are common between them (without
//  duplicates). Make sure your program works on two lists of different sizes.

import 'dart:io';

void main() {
  List<int> num1 = [];
  List<int> num2 = [];
  stdout.write('Enter the size of list 1 : ');
  int sizeOfList1 = int.parse(stdin.readLineSync() ?? '0');
  stdout.write('Enter the size of list 2 : ');
  int sizeOfList2 = int.parse(stdin.readLineSync() ?? '0');
  print('Enter the values of list 1');
  for (var i = 0; i < sizeOfList1; i++) {
    num1.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  print('Enter the values of list 2');
  for (var i = 0; i < sizeOfList2; i++) {
    num2.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  FindCommon(num1, num2);
}

List FindCommon(List num1, List num2) {
  List commonelements = [];
  for (int i = 0; i < num1.length; i++) {
    for (var j = 0; j < num2.length; j++) {
      if (num1[i] == num2[j] && !commonelements.contains(num1[i])) {
        commonelements.add(num1[i]);
      }
    }
  }
  print(commonelements);
  return commonelements;
}
