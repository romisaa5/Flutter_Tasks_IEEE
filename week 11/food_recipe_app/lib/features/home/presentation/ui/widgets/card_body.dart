import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/helper/extentions.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          75.ph,
          Text(
            'Spaghetti Carbonara',
            style: TextAppTheme.textStyle14.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Time',
              style: TextAppTheme.textStyle12.copyWith(color: Colors.black54),
            ),
            subtitle: Text(
              '30 minutes',
              style: TextAppTheme.textStyle12.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: CircleAvatar(
              radius: 12.r,
              backgroundColor: Colors.white,
              child: Icon(Icons.favorite, size: 16.sp, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
