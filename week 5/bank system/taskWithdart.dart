import 'dart:io';

void main() {
  double balance = 30000;
  while (true) {
    print('\n*=== ATM Services ===*\n');
    print('1. Check Balance\n');
    print('2. Withdraw Cash\n');
    print('3. Deposit Cash\n');
    print('4. Quit\n');
    print("select an option from 1 to 4\n");
     int choice = int.parse(stdin .readLineSync()!);
    if (choice == 1) {
      print("your current balance is : $balance  ");
      print("\n");
    } else if (choice == 2) {
      print("Enter amout to withdraw :");
      double withdraw_input = double.parse(stdin.readLineSync()!);
      if (withdraw_input <= balance && withdraw_input > 0) {
        balance -= withdraw_input;
        print("\n");
        print(" your current balance is :$balance ");
        print("\n");
      } else {
        print("Invalid amount or insufficient funds\n");
      }
    } else if (choice == 3) {
      print("Enter amount to deposite :");
      double deposite_input = double.parse(stdin.readLineSync()!);
      if (deposite_input > 0) {
        balance += deposite_input;
        print('\nYou have deposited: \$$deposite_input');
        print("\n");
        print('Your new balance is: \$$balance');
      } else {
        print('\nInvalid deposit amount.');
      }
    } else if (choice == 4) {
      print('\nThank you for using the ATM. Goodbye!');
      break;
    } else {
      print('\nInvalid option. Please choose a number between 1 and 4.');
    }
  }
}
