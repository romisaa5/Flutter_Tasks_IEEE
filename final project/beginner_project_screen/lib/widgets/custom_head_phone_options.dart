import 'package:flutter/material.dart';
import 'package:beginner_project_screen/constant.dart';

class CustomHeadPhoneOptions extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onImageSelected; 

  const CustomHeadPhoneOptions({
    super.key,
    required this.selectedIndex,
    required this.onImageSelected,
  });

  final List<String> imagePaths = const [
    'assets/images/headphone_icon1.png',
    'assets/images/headphone_icon2.png',
    'assets/images/headphone_icon3.png',
    'assets/images/headphone_icon4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(imagePaths.length, (index) {
        return GestureDetector(
          onTap: () => onImageSelected(index), 
          child: Container(
            height: 55,
            width: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: selectedIndex == index ? kPrimaryColor : Colors.grey,
                width:selectedIndex == index ? 3 :1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.contain,
              ),
            ),
          ),
        );
      }),
    );
  }
}
