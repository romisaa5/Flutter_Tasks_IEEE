import 'package:expenzo_app/features/home/data/models/transaction.dart';
import 'package:flutter/material.dart';

@immutable
abstract class TransactionState {}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionLoaded extends TransactionState {
  final List<TransactionExpense> transactions;

  TransactionLoaded(this.transactions);
}

class TransactionError extends TransactionState {
  final String error;
  TransactionError(this.error);
}
