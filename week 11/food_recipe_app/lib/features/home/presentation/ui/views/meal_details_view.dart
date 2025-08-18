import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/detail_tab_bar.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/more_options_menu.dart';

class MealDetailsView extends StatelessWidget {
  const MealDetailsView({super.key, required this.mealId});
  final String mealId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [MoreOptionsMenu()],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Meal Details',
                style: TextAppTheme.textStyle14.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Taste the flavors of  cuisine!",
                  style: TextAppTheme.textStyle14.copyWith(
                    color: Colors.black87,
                  ),
                ),
                subtitle: Text('Category :  ', style: TextAppTheme.textStyle12),
                trailing: CircleAvatar(
                  radius: 12.r,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite,
                    size: 16.sp,
                    color: Colors.black54,
                  ),
                ),
              ),

              DetailTabsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
