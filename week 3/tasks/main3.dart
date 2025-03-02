// Write a password generator in Dart. Be creative with how you generate passwords -
// strong passwords have a mix of lowercase letters, uppercase letters, numbers,
// and symbols. The passwords should be random,
// generating a new password every time the user asks for a new password.
// Include your run-time code in a main method.
import 'dart:io';
import 'dart:math';

void main() {
  print('Entar length of Password');
  int lengthPassword = int.parse(stdin.readLineSync() ?? '8');
  print("generated Password: ${generatePassword(lengthPassword)}");
}

String generatePassword(int length) {
  String upperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String lowerCase = 'abcdefghijklmnopqrstuvwxyz';
  String numbers = '0123456789';
  String symbols = r'!@#\$%^&*()-_=+[]{}|;:,.<>?';

  String CharsOptions = upperCase + lowerCase + numbers + symbols;
  Random random = Random();

  List<String> password = [];
  password.add(upperCase[random.nextInt(upperCase.length)]);
  password.add(lowerCase[random.nextInt(lowerCase.length)]);
  password.add(numbers[random.nextInt(numbers.length)]);
  password.add(symbols[random.nextInt(symbols.length)]);

  for (int i = 4; i < length; i++) {
    password.add(CharsOptions[random.nextInt(CharsOptions.length)]);
  }

  password.shuffle();

  return password.join();
}
