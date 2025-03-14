import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 32,
                    )), 
                    title:Text(
                  'Details',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ), 
                actions: [
                    IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 32,
                    )),
                ],
    );
  }
}