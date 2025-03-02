import 'bankacount.dart';

abstract class Transaction {
  void execute(BankAccount account);
}

class CheckBalanceTransaction extends Transaction {
  @override
  void execute(BankAccount account) {}
}

class WithdrawTransaction extends Transaction {
  @override
  void execute(BankAccount account) {}
}

class DepositTransaction extends Transaction {
  @override
  void execute(BankAccount account) {}
}
