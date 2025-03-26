
import 'package:beginner_project_screen/constant.dart';
import 'package:flutter/material.dart';

class CustomRate extends StatelessWidget {
  const CustomRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 30,width: 65,decoration: BoxDecoration(
      color: kWhiteColor,borderRadius: BorderRadius.circular(12),
      border: Border.all(color: kGreyColor)
                 
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star,color: Colors.amberAccent,),
        Text('(4.9)')
      ],
    ),);
  }
}
