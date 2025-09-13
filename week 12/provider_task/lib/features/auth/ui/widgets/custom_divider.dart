import 'package:flutter/material.dart';
import 'package:provider_task/core/theme/text_theme.dart';



class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            endIndent: 10,
            color: Colors.grey,
            thickness: .5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(text, style: TextAppTheme.textStyle14),
        ),
        Expanded(
          child: Divider(
            endIndent: 10,
            color: Colors.grey,
            thickness: .5,
          ),
        ),
      ],
    );
  }
}
