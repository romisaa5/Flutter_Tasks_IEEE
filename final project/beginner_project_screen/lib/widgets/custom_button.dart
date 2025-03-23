import 'package:beginner_project_screen/constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(230, 50),
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Add to Cart  ',
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
          Icon(Icons.arrow_forward_ios,color: kWhiteColor,)
        ],
      ),
    );
  }
}
