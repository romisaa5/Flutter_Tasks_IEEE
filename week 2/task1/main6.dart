// Given a list of integers, write a function that finds the max and min integers in the list,
// without using any library functions in Dart.

import 'dart:io';

void main() {
  List<int> nums = [];
  for (var i = 0; i < 5; i++) {
      nums.add(int.parse(stdin.readLineSync()!));
  }
  int max = nums[0];
  int min = nums[0];

  for (var i = 0; i < nums.length; i++) {
    if (nums[i] > max) {
      max = nums[i];
    }
    if (nums[i] < min) {
      min = nums[i];
    }
  }
  print('the max number is :$max');
    print('the min number is :$min');

}
