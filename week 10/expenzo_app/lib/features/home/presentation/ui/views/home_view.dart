import 'package:expenzo_app/core/helper/extentions.dart';
import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:expenzo_app/features/home/data/models/transaction.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/add_expense_bottom_sheet.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/custom_list_my_expenses.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/custom_list_tile_app_bar.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/do_not_have_any_expense.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/months_horizontal_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          onPressed: () {
            AddExpenseBottomSheet.show(context);
          },
          shape: const CircleBorder(),
          backgroundColor: AppColors.primaryColor,
          child: const Icon(Icons.add, size: 30, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          20.ph,
          CustomListTileAppBar(),
          20.ph,
          Text('\$392.09', style: TextAppTheme.textStyle48),
          20.ph,
          MonthsHorizontalList(),
          Transaction.transactions.isEmpty
              ? DonotHaveAnyExpense()
              : Expanded(child: CustomListMyExpenses()),
        ],
      ),
    );
  }
}
