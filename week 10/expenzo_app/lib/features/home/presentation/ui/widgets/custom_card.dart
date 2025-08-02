import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:expenzo_app/features/home/presentation/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
        style: TextAppTheme.textStyle14.copyWith(color: Color(0xff424242)),
      ),
    );
  }
}
