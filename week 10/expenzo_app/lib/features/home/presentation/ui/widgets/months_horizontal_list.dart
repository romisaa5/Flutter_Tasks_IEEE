import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MonthsHorizontalList extends StatefulWidget {
  const MonthsHorizontalList({super.key});

  @override
  State<MonthsHorizontalList> createState() => _MonthsHorizontalListState();
}

class _MonthsHorizontalListState extends State<MonthsHorizontalList> {
  final List<String> months = const [
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

  int selectedMonth = DateTime.now().month - 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: months.length,
        itemBuilder: (context, index) {
          Color backgroundColor;
          Color textColor;

          if (index == selectedMonth) {
            backgroundColor = AppColors.primaryColor;
            textColor = Colors.white;
          } else if (index < selectedMonth) {
            backgroundColor = AppColors.lightGreyColor;
            textColor = Colors.black;
          } else {
            backgroundColor = AppColors.greyColor;
            textColor = Colors.white;
          }

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedMonth = index;
              });
            },
            child: Container(
              height: 25.h,
              width: 50.w,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color:
                      index == selectedMonth
                          ? AppColors.primaryColor
                          : Colors.transparent,
                ),
              ),
              child: Center(
                child: Text(
                  months[index],
                  style: TextAppTheme.textStyle10.copyWith(color: textColor),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
