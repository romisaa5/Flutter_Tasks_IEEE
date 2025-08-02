import 'package:expenzo_app/features/home/presentation/models/transaction.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class CustomListMyExpenses extends StatelessWidget {
  const CustomListMyExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(endIndent: 15, indent: 15),
      itemCount: Transaction.transactions.length,
      itemBuilder: (context, index) {
        return CustomCard(transaction: Transaction.transactions[index]);
      },
    );
  }
}
