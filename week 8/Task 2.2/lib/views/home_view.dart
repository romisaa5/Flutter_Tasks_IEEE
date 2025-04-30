import 'package:flutter/material.dart';
import 'package:task22/theme/app_colors.dart';
import 'package:task22/theme/text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: [
            Row(
              children: [
                Text('To do List ✅',style: TextStyles.textstyle32,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
