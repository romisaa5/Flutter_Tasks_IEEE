import 'package:beginner_project_screen/constant.dart';
import 'package:flutter/material.dart';

class CustomHeadPhoneItem extends StatefulWidget {
  const CustomHeadPhoneItem({super.key, required this.imagePath});
  final String imagePath;

  @override
  State<CustomHeadPhoneItem> createState() => _CustomHeadPhoneItemState();
}

class _CustomHeadPhoneItemState extends State<CustomHeadPhoneItem> {
  bool isFavorite = false; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 360,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
        color: kContainerColor,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Center(
            child: Image.asset(
              widget.imagePath,
              height: 200,
              width: 200,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 40,
              width: 40,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite; 
                    });
                  },
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border, 
                    color: isFavorite ? Colors.red : Colors.black, 
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
