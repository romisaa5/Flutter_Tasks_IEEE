import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_task/core/theme/text_theme.dart';

class CustomListtileAppSettings extends StatelessWidget {
  const CustomListtileAppSettings({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });
  final IconData icon;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, size: 24.sp, color: Colors.black),
      title: Text(
        title,
        style: TextAppTheme.textStyle14.copyWith(color: Colors.black),
      ),
      trailing: GestureDetector(
        onTap: onTap,
        child: Icon(Icons.arrow_forward_ios, size: 20.sp, color: Colors.black),
      ),
    );
  }
}
