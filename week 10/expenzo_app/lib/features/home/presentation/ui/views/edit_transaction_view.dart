import 'package:expenzo_app/core/helper/extentions.dart';
import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:expenzo_app/core/widgets/custom_button.dart';
import 'package:expenzo_app/core/widgets/custom_text_form_field.dart';
import 'package:expenzo_app/features/home/data/models/category.dart';
import 'package:expenzo_app/features/home/data/models/transaction.dart';
import 'package:expenzo_app/features/home/presentation/manager/transaction_cubit/transaction_cubit.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/category_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditTransactionView extends StatefulWidget {
  final TransactionExpense transaction;

  const EditTransactionView({super.key, required this.transaction});

  @override
  State<EditTransactionView> createState() => _EditTransactionViewState();
}

class _EditTransactionViewState extends State<EditTransactionView> {
  late TextEditingController _amountController;
  late TextEditingController descriptionController;
  late TextEditingController dateController;
  DateTime? _selectedDate;
  Category? _selectedCategory;

  final List<Category> _categories = [
    Category(name: 'Coffee', imageUrl: 'assets/images/coffee.png'),
    Category(name: 'Pet Care', imageUrl: 'assets/images/pet_care.png'),
    Category(name: 'Commute', imageUrl: 'assets/images/commute.png'),
    Category(name: 'Burger', imageUrl: 'assets/images/burger.png'),
  ];

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController(
      text: widget.transaction.amount.toString(),
    );
    descriptionController = TextEditingController(
      text: widget.transaction.description,
    );
    _selectedDate = widget.transaction.date;
    dateController = TextEditingController(
      text:
          "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}",
    );

    _selectedCategory = _categories.firstWhere(
      (cat) => cat.name == widget.transaction.category.name,
      orElse: () => _categories.first,
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    descriptionController.dispose();
    dateController.dispose();
    super.dispose();
  }

  void _updateTransaction() {
    final updatedTransaction = widget.transaction.copyWith(
      amount:
          double.tryParse(_amountController.text) ?? widget.transaction.amount,
      date: _selectedDate,
      category: _selectedCategory,
    );
    context.read<TransactionCubit>().updateTransaction(updatedTransaction);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Transaction'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: TextAppTheme.textStyle12.copyWith(
                color: AppColors.blackColor,
              ),
            ),
            AppTextFormField(
              hintText: 'What did you spend on?',
              controller: descriptionController,
            ),
            Text(
              'Amount',
              style: TextAppTheme.textStyle12.copyWith(
                color: AppColors.blackColor,
              ),
            ),
            AppTextFormField(
              hintText: '0.00',
              controller: _amountController,
              keyboardType: TextInputType.number,
            ),
            Text(
              'Category',
              style: TextAppTheme.textStyle12.copyWith(
                color: AppColors.blackColor,
              ),
            ),
            CategoryDropdown(
              categories: _categories,
              selectedCategory: _selectedCategory,
              onChanged: (value) {
                setState(() => _selectedCategory = value);
              },
            ),
            Text(
              'Date',
              style: TextAppTheme.textStyle12.copyWith(
                color: AppColors.blackColor,
              ),
            ),
            AppTextFormField(
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                color: AppColors.blackColor,
                size: 28,
              ),
              hintText: 'Select Date',
              controller: dateController,
              readOnly: true,
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2025),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  setState(() {
                    _selectedDate = pickedDate;
                    dateController.text =
                        "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                  });
                }
              },
            ),
            20.ph,
            CustomButton(
              onTap: _updateTransaction,
              text: 'Update',
              color: AppColors.primaryColor,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
