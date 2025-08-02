import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonotHaveAnyExpense extends StatelessWidget {
  const DonotHaveAnyExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: Column(
        spacing: 10.h,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xffE5FCDC),
            radius: 60,
            child: Image.asset('assets/images/no_expense.png'),
          ),
          Text(
            'You don\'t have any expense at the moment.',
            style: TextAppTheme.textStyle12,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.error_outline),
            title: Text(
              'Try clicking the button above,\n or click here to create a new one.',
              style: TextAppTheme.textStyle12,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
