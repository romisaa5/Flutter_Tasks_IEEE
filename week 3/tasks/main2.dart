// Ask the user for a string and print out whether this string is a palindrome or not.
//  A palindrome is a string that reads the same forwards and backwards.
import 'dart:io';

void main() {
  stdout.write('Enter the word: ');
  String word = stdin.readLineSync()!;
  

  word = word.replaceAll(' ', '').toLowerCase();
  
  String reversedWord = "";
  for (var i = word.length - 1; i >= 0; i--) {
    reversedWord += word[i];
  }
  
  if (word == reversedWord) {
    print('The word is a palindrome');
  } else {
    print('The word is not a palindrome');
  }
}
