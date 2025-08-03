import 'package:expenzo_app/features/home/presentation/manager/expense_cubit/transaction_cubit.dart';
import 'package:expenzo_app/features/home/presentation/manager/expense_cubit/transaction_state.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/custom_card.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/do_not_have_any_expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListMyExpenses extends StatelessWidget {
  final int selectedMonth;

  const CustomListMyExpenses({super.key, required this.selectedMonth});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is TransactionLoaded) {
          final filtered =
              state.transactions
                  .where((e) => e.date.month == selectedMonth)
                  .toList();

          if (filtered.isEmpty) return const DonotHaveAnyExpense();

          return ListView.separated(
            separatorBuilder:
                (context, index) => const Divider(indent: 15, endIndent: 15),
            itemCount: filtered.length,
            itemBuilder: (context, index) {
              return CustomCard(transaction: filtered[index]);
            },
          );
        } else if (state is TransactionError) {
          print(state.error);
          return Center(child: Text('Error: ${state.error}'));
        }

        return const SizedBox.shrink();
      },
    );
  }
}
