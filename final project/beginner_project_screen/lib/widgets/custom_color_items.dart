import 'package:beginner_project_screen/constant.dart';
import 'package:flutter/material.dart';

class CustomColorItems extends StatefulWidget {
  const CustomColorItems({super.key});

  @override
  _CustomColorItemsState createState() => _CustomColorItemsState();
}

class _CustomColorItemsState extends State<CustomColorItems> {
  Color? selectedColor; 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min, 
      children: [
        _buildColorCircle(kBlackColor),
        _buildColorCircle(kGreyColor),
        _buildColorCircle(kWhiteColor),
      ],
    );
  }

  Widget _buildColorCircle(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color; 
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4), 
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: selectedColor == color ? kPrimaryColor : Colors.transparent, 
            width: 2,
          ),
        ),
        child: CircleAvatar(
          radius: 10, 
          backgroundColor: color, 
        ),
      ),
    );
  }
}
