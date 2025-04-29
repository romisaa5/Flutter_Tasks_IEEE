import 'package:bmi/theme/colors.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:flutter/material.dart';

class HightContainer extends StatefulWidget {
  const HightContainer({super.key, this.hight});
  final int? hight;

  @override
  State<HightContainer> createState() => _HightContainerState();
}

class _HightContainerState extends State<HightContainer> {
  double _currentHeight = 170;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor.withValues(alpha: .18),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 342,
      height: 239,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 15,
          children: [
            Row(children: [Text('Height', style: TextStyles.textStyle20)]),
            Text(_currentHeight.toInt().toString(),style: TextStyles.textStyle64,),
            Slider(
              inactiveColor: AppColors.blackColor,
              activeColor: AppColors.kPrimaryColor,
              min: 50,
              max: 220,
             value: _currentHeight,
              onChanged: (value) {
                setState(() {
                  _currentHeight = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
