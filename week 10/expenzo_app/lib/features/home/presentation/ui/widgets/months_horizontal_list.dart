import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:flutter/material.dart';

class MonthsHorizontalList extends StatelessWidget {
  final int selectedMonth;
  final Function(int) onMonthSelected;

  const MonthsHorizontalList({
    super.key,
    required this.selectedMonth,
    required this.onMonthSelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ];

    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: months.length,
        itemBuilder: (context, index) {
          final isSelected = selectedMonth == index + 1;
          final backgroundColor =
              isSelected
                  ? AppColors.primaryColor
                  : index + 1 < selectedMonth
                  ? AppColors.lightGreyColor
                  : AppColors.greyColor;

          return GestureDetector(
            onTap: () => onMonthSelected(index + 1),
            child: Container(
              width: 50,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  months[index],
                  style: TextAppTheme.textStyle10.copyWith(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
