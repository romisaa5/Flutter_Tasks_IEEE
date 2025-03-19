import 'package:flutter/material.dart';
import 'package:task7/custom_favorite_icon.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CustomFavoriteIcon(),
      title: Text(
        'Details',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          icon: Icon(
            Icons.favorite,
            color: isFavorite ? Colors.red : Colors.grey,
            size: 32,
          ),
        ),
      ],
    );
  }
}
