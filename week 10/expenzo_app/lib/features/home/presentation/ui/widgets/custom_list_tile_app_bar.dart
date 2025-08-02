import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CustomListTileAppBar extends StatelessWidget {
  const CustomListTileAppBar({super.key});

  String getFormattedDate() {
    DateTime now = DateTime.now();
    return DateFormat('EEEE, d MMMM').format(now);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('My expenses:', style: TextAppTheme.textStyle18),
      subtitle: Text(
        getFormattedDate(),
        style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
      ),

      trailing: Image.asset('assets/images/menu.png'),
    );
  }
}
