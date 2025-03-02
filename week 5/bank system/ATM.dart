
import 'bankacount.dart';
import 'transaction.dart';

class ATM {
  void performTransaction(Transaction transaction, BankAccount account) {
    transaction.execute(account);
  }
}