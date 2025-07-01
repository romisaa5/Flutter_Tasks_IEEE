import 'package:auth_screens/theme/app_color.dart';
import 'package:auth_screens/theme/text_styles.dart';
import 'package:flutter/material.dart';

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
                  ? WidgetStateProperty.all(AppColor.kPrimaryColor)
                  : WidgetStateProperty.all(AppColor.greydark),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          side: BorderSide(color: AppColor.greyLight, width: 1),
          value: isCheck,
          onChanged: (_) {
            setState(() {
              isCheck = !isCheck;
            });
          },
        ),
        Text(
          'Stay logged in?',
          style: Styles.textStyle12.copyWith(color: AppColor.greydarker),
        ),
      ],
    );
  }
}
