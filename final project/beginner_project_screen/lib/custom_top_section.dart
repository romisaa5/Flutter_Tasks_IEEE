import 'package:beginner_project_screen/constant.dart';
import 'package:beginner_project_screen/widgets/custom_head_phone_item.dart';
import 'package:beginner_project_screen/widgets/custom_head_phone_options.dart';
import 'package:flutter/material.dart';

class CustomTopSection extends StatefulWidget {
  const CustomTopSection({super.key});

  @override
  State<CustomTopSection> createState() => _CustomTopSectionState();
}

class _CustomTopSectionState extends State<CustomTopSection> {
  int selectedIndex = 0;

  final List<String> imagePaths = List.generate(
    4,
    (index) => 'assets/images/headphone_icon${index + 1}.png',
  );

  void updateSelectedImage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              spacing: 45,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      border: Border.all(color: kGreyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),

                CustomHeadPhoneOptions(
                  selectedIndex: selectedIndex,
                  onImageSelected: updateSelectedImage,
                ),
              ],
            ),
          ),
          CustomHeadPhoneItem(imagePath: imagePaths[selectedIndex]),
        ],
      ),
    );
  }
}
