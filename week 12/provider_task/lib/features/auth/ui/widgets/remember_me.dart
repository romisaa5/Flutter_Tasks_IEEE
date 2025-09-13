import 'package:flutter/material.dart';
import 'package:provider_task/core/theme/text_theme.dart';


class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor:
              isCheck
                  ? WidgetStateProperty.all(Colors.blue)
                  : WidgetStateProperty.all(Colors.grey),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          side: BorderSide(color: Colors.grey, width: 1),
          value: isCheck,
          onChanged: (_) {
            setState(() {
              isCheck = !isCheck;
            });
          },
        ),
        Text(
          'Stay logged in?',
          style: TextAppTheme.textStyle12.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
