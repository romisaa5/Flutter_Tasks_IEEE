import 'package:flutter/material.dart';

class CustomNumberOfItems extends StatefulWidget {
  const CustomNumberOfItems({super.key});

  @override
  State<CustomNumberOfItems> createState() => _CustomNumberOfItemsState();
}

class _CustomNumberOfItemsState extends State<CustomNumberOfItems> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              icon: Icon(Icons.add)),
          Text(
            '$count',
            style: TextStyle(fontSize: 24),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  count--;
                });
              },
              icon: Icon(Icons.remove)),
        ],
      ),
    );
  }
}
