import 'package:bmi/theme/colors.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:flutter/material.dart';

class HeightContainer extends StatefulWidget {
  const HeightContainer({
    super.key,
    required this.height,
    required this.onChanged, required this.onUnitChanged,
  });
   final double height;
  final Function(double) onChanged;
  final Function(String) onUnitChanged;

  @override
  State<HeightContainer> createState() => _HeightContainerState();
}

class _HeightContainerState extends State<HeightContainer> {
   String selectedUnit = 'Cm';
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            Row(
              spacing: 10,
              children: [
                Text('Height', style: TextStyles.textStyle20),
                Spacer(),
                hightUnit('In'),
                hightUnit('Ft'),
                hightUnit('Cm')
              ],
            ),
            Text(widget.height.toInt().toString(), style: TextStyles.textStyle64),
            Slider(
              inactiveColor: AppColors.blackColor,
              activeColor: AppColors.kPrimaryColor,
              min: 0,
              max: 220,
              value: widget.height,
              onChanged: widget.onChanged,
            ),
          ],
        ),
      ),
    );
  }

   Widget hightUnit(String unit) {
    final isSelected = selectedUnit == unit;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedUnit = unit;
        });
        widget.onUnitChanged(unit); 
      },
      child: CircleAvatar(
        backgroundColor: isSelected
            ? AppColors.kPrimaryColor.withValues(alpha:.28)
            : AppColors.mostGreyColor.withValues(alpha:.28),
        child: Text(
          unit,
          style: TextStyle(
            color:  Colors.white ,
          ),
        ),
      ),
    );
  }
}
