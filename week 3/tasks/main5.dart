//  Let’s say you are given a list saved in a variable : a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100] Write a Dart code that
//  .takes this list and makes a new list that has only the even elements of this list in it
import 'dart:io';

void main() {
  List<int> nums = [];
  stdout.write('Enter the size of list  : ');
  int sizeOfList = int.parse(stdin.readLineSync() ?? '0');
  print('Enter the values of list ');
  for (var i = 0; i < sizeOfList; i++) {
    nums.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  EvenNumberInList(nums);
}

List<int> EvenNumberInList(List nums) {
  List<int> EvenNums = [];
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 2 == 0) {
      EvenNums.add(nums[i]);
    }
  }
  print(EvenNums);
  return EvenNums;
}
