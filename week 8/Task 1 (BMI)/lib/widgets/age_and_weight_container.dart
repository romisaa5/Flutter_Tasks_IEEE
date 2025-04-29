import 'package:bmi/theme/colors.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:flutter/material.dart';

class AgeAndWeightContainer extends StatefulWidget {
  const AgeAndWeightContainer({super.key, required this.title});
  final String title;
  @override
  State<AgeAndWeightContainer> createState() => _AgeAndWeightContainerState();
}

class _AgeAndWeightContainerState extends State<AgeAndWeightContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.kPrimaryColor.withValues(alpha: .18),
      ),
      child: Column(
        children: [
        Text(widget.title,style:TextStyles.textStyle20 ,),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(),
              child: IconButton(onPressed: (){
              
              }, icon: Icon(Icons.add)),
            )
          ],
        )
      ]),
    );
  }
}
