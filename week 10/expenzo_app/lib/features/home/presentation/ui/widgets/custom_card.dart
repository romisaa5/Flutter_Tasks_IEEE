import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:expenzo_app/core/utils/app_router.dart';
import 'package:expenzo_app/features/home/data/models/transaction.dart';
import 'package:expenzo_app/features/home/presentation/manager/expense_cubit/transaction_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.transaction});

  final TransactionExpense transaction;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: Key(transaction.id?.toString() ?? UniqueKey().toString()),

      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              GoRouter.of(context).push(AppRouter.editview, extra: transaction);
            },
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (context) {
              context.read<TransactionCubit>().deleteTransaction(
                transaction.id!,
              );
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),

      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: AppColors.lighterGreyColor,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Image.asset(transaction.category.imageUrl),
          ),
        ),
        subtitle: Text(
          transaction.category.name,
          style: TextAppTheme.textStyle16.copyWith(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        title: Text(
          DateFormat('EEEE, d MMMM yyyy').format(transaction.date),
          style: TextAppTheme.textStyle12,
        ),
        trailing: Text(
          '-\$${transaction.amount.toStringAsFixed(2)}',
          style: TextAppTheme.textStyle14.copyWith(
            color: const Color(0xff424242),
          ),
        ),
      ),
    );
  }
}
