
import 'bankacount.dart';
import 'transaction.dart';

class ATM {
  void performTransaction(Transaction transaction, BankAccount account,String language) {
    transaction.execute(account,language);
  }
}