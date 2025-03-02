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
  findCommon(num1, num2);
}

List<int> findCommon(List<int> num1, List<int> num2) {
  Set<int> set1 = num1.toSet();
  Set<int> set2 = num2.toSet();
  List<int> commonElements = set1.intersection(set2).toList();
  print(commonElements);
  return commonElements;
}
