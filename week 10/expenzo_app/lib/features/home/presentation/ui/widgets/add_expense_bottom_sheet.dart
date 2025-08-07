import 'package:expenzo_app/core/helper/extentions.dart';
import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:expenzo_app/core/widgets/custom_text_form_field.dart';
import 'package:expenzo_app/features/home/data/models/category.dart';
import 'package:expenzo_app/features/home/data/services/sqflite_database.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/add_transaction_button.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/category_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddExpenseBottomSheet extends StatefulWidget {
  const AddExpenseBottomSheet({super.key});

  @override
  State<AddExpenseBottomSheet> createState() => _AddExpenseBottomSheetState();

  static void show(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder:
          (context) => const Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 24),
            child: AddExpenseBottomSheet(),
          ),
    );
  }
}

class _AddExpenseBottomSheetState extends State<AddExpenseBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final descriptionController = TextEditingController();
  final amountController = TextEditingController();
  final dateController = TextEditingController();
  final db = SqfliteDb();

  @override
  void dispose() {
    descriptionController.dispose();
    amountController.dispose();
    dateController.dispose();
    super.dispose();
  }
  Category? _category;
  DateTime? selectedDate;
  final List<Category> categories = [
    Category(name: 'Coffee', imageUrl: 'assets/images/coffee.png'),
    Category(name: 'Pet Care', imageUrl: 'assets/images/pet_care.png'),
    Category(name: 'Commute', imageUrl: 'assets/images/commute.png'),
    Category(name: 'Burger', imageUrl: 'assets/images/burger.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: Column(
        spacing: 20.h,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(height: 4, width: 40, color: Colors.grey[300]),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10.h,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter description";
                    }
                    return null;
                  },
                ),
                Text(
                  'Amount',
                  style: TextAppTheme.textStyle12.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                AppTextFormField(
                  hintText: '0.00',
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Enter amount';
                    return null;
                  },
                ),
                Text(
                  'Category',
                  style: TextAppTheme.textStyle12.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                CategoryDropdown(
                  categories: categories,
                  selectedCategory: _category,
                  onChanged: (val) => setState(() => _category = val),
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
                        selectedDate = pickedDate;
                        dateController.text =
                            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                      });
                    }
                  },
                ),
                20.ph,
                AddTransactionButton(
                  formKey: _formKey,
                  descriptionController: descriptionController,
                  amountController: amountController,
                  selectedCategory: _category,
                  selectedDate: selectedDate,
                  onSuccess: () {
                    setState(() {});
                  },
                ),

                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Cancel',
                      style: TextAppTheme.textStyle18.copyWith(
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
