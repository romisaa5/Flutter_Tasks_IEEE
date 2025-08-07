import 'package:expenzo_app/core/helper/extentions.dart';
import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:expenzo_app/features/home/presentation/manager/transaction_cubit/transaction_cubit.dart';
import 'package:expenzo_app/features/home/presentation/manager/transaction_cubit/transaction_state.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/add_expense_bottom_sheet.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/custom_list_my_expenses.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/custom_list_tile_app_bar.dart';
import 'package:expenzo_app/features/home/presentation/ui/widgets/months_horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedMonth = DateTime.now().month;

  void onMonthSelected(int month) {
    setState(() {
      selectedMonth = month;
    });
  }

  @override
  void initState() {
    super.initState();
    context.read<TransactionCubit>().loadTransactions();
  }

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
          30.ph,
          CustomListTileAppBar(),
          40.ph,
          BlocBuilder<TransactionCubit, TransactionState>(
            builder: (context, state) {
              double total = context.read<TransactionCubit>().getMonthlyTotal(
                selectedMonth,
              );
              return Text(
                '\$${total.toStringAsFixed(2)}',
                style: TextAppTheme.textStyle48,
              );
            },
          ),

          40.ph,
          MonthsHorizontalList(
            selectedMonth: selectedMonth,
            onMonthSelected: onMonthSelected,
          ),
          Expanded(child: CustomListMyExpenses(selectedMonth: selectedMonth)),
        ],
      ),
    );
  }
}
