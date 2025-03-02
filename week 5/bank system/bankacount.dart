import 'transaction.dart';

class BankAccount {
  int acountNumber;
  String acountName;
  String acountPassword;
  Transaction transactionHistory;
  double balance;
  BankAccount({
    required this.acountName,
    required this.acountNumber,
    required this.acountPassword,
    required this.transactionHistory,
    required this.balance,
  });
  void updateBalance(double amount) {
    balance += amount;
  }

  void checkBalance(String language) {
    if (language == "ar") {
      print("\n💰 رصيدك الحالي: \$${balance}\n");
    } else {
      print("\n💰 Your current balance: \$${balance}\n");
    }
  }

  bool verifyPin(String enteredPin) {
    return enteredPin == acountPassword;
  }
}
