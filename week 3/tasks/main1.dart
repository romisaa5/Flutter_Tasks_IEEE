
// Generate a random number between 1 and 100. Ask the user to guess the number,
//  then tell them whether they guessed too low, too high, or exactly right.
//   (with limit of 7 trials)
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int num = random.nextInt(100) + 1;
  int attempts = 7;

  print('Welcome to the Guess the Number Game!');
  print('I have chosen a number between 1 and 100. Can you guess it?');
  print('You have $attempts attempts.');

  while (attempts > 0) {
    stdout.write('Enter your guess: ');
    try {
      int guess = int.parse(stdin.readLineSync()!); 
      if (guess == num) {
        print(' Congrats! 🎉 The random number is $num.');
        break;
      } else if (guess > num) {
        print('Too high! Try a smaller number.');
      } else {
        print('Too low! Try a bigger number.');
      }
      attempts--;
      print('You have $attempts attempts left.');
    } catch (e) {
      print('Invalid input! Please enter a valid number.');
    }

    if (attempts == 0) {
      print('😢 You\'ve used all your attempts. The number was $num.');
    }
  }
}
