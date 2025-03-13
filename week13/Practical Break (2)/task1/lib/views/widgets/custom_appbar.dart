import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios,size: 20,),
      actions: [
        Icon(Icons.favorite_border_outlined),
        SizedBox(width: 10,),
        Icon(Icons.shopping_bag_sharp)
      ],
    );
  }
}
