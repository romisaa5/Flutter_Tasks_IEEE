import 'package:expenzo_app/core/helper/custom_snackbar.dart';
import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/widgets/custom_button.dart';
import 'package:expenzo_app/features/home/data/models/category.dart';
import 'package:expenzo_app/features/home/data/services/sqflite_database.dart';
import 'package:expenzo_app/features/home/presentation/manager/expense_cubit/transaction_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTransactionButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController descriptionController;
  final TextEditingController amountController;
  final Category? selectedCategory;
  final DateTime? selectedDate;
  final VoidCallback? onSuccess;

  const AddTransactionButton({
    super.key,
    required this.formKey,
    required this.descriptionController,
    required this.amountController,
    required this.selectedCategory,
    required this.selectedDate,
    this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Add',
      color: AppColors.primaryColor,
      width: double.infinity,
      onTap: () async {
        if (formKey.currentState!.validate()) {
          final description = descriptionController.text.trim();
          final amount = double.tryParse(amountController.text.trim()) ?? 0.0;
          final category = selectedCategory;
          final date = selectedDate;

          if (category != null && date != null) {
            final sql = '''
              INSERT INTO transactions (amount, description, date, categoryName, categoryImage)
              VALUES ($amount, "$description", "${date.toIso8601String()}", "${category.name}", "${category.imageUrl}")
            ''';

            await SqfliteDb().insertData(sql);
            if (!context.mounted) return;
            context.read<TransactionCubit>().loadTransactions();
            showDoneSnackBar(
              context: context,
              message: 'Transaction added successfully',
            );

            if (onSuccess != null) onSuccess!();
            Navigator.pop(context);
          } else {
            showErrorSnackBar(
              context: context,
              message: 'Please select a category and date',
            );
          }
        }
      },
    );
  }
}
