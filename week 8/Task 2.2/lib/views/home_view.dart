import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task22/theme/app_colors.dart';
import 'package:task22/theme/text_styles.dart';
import 'package:task22/widgets/task_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final String todayDate = DateFormat('hh:mm a').format(DateTime.now());
    final String date = DateFormat('d E').format(DateTime.now());
    final List<String> taskTitles = [
      "Flutter Task.",
      "Create account on discord.",
      "Finish the game.",
      "Add more details about day",
      "Go to gym",
    ];
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: AppColors.navyBlue,
        hoverColor: Colors.blue.withValues(alpha: .18),
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 30,),
            Row(
              spacing: 5,
              children: [
                Text('To do List ✅', style: TextStyles.textstyle32),
                Spacer(),
              Text(date,style: TextStyles.textstyle18),
              Icon(Icons.calendar_month_outlined)
                ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: taskTitles.length,
              itemBuilder: (context, index) {
                return TaskCard(title: taskTitles[index], subtitle: todayDate);
              },
            ),
          ],
        ),
      ),
    );
  }
}
