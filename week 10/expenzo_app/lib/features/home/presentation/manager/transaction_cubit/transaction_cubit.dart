import 'package:bloc/bloc.dart';
import 'package:expenzo_app/features/home/data/models/transaction.dart';
import 'package:expenzo_app/features/home/data/services/sqflite_database.dart';
import 'package:expenzo_app/features/home/presentation/manager/transaction_cubit/transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  List<TransactionExpense> allTransactions = [];

  Future<void> loadTransactions() async {
    emit(TransactionLoading());
    try {
      final transactions = await SqfliteDb().getAllTransactions();
      allTransactions = transactions;
      emit(TransactionLoaded(allTransactions));
    } catch (e) {
      emit(TransactionError(e.toString()));
    }
  }

  double getMonthlyTotal(int month) {
    final monthlyTransactions =
        allTransactions.where((t) => t.date.month == month).toList();
    double total = 0;
    for (var t in monthlyTransactions) {
      total += t.amount;
    }
    return total;
  }

  void deleteTransaction(int id) async {
    await SqfliteDb().deleteData('DELETE FROM transactions WHERE id = $id');
    await loadTransactions();
  }

  void updateTransaction(TransactionExpense transaction) async {
    final dateString = transaction.date.toIso8601String();
    await SqfliteDb().updateData('''
    UPDATE transactions SET
      amount = ${transaction.amount},
      description = "${transaction.description}",
      categoryName = "${transaction.category.name}",
      categoryImage = "${transaction.category.imageUrl}",
      date = "$dateString"
    WHERE id = ${transaction.id}
  ''');

    await loadTransactions();
  }
}
