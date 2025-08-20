import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/services/favorite_meals_service.dart';
import 'package:food_recipe_app/features/favorites/data/models/favorite_recipe.dart';


class CustomFavoriteIcon extends StatefulWidget {
  final String id;
  final String title;
  final String imageUrl;

  const CustomFavoriteIcon({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  @override
  State<CustomFavoriteIcon> createState() => _CustomFavoriteIconState();
}

class _CustomFavoriteIconState extends State<CustomFavoriteIcon> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _checkFavorite();
  }

  Future<void> _checkFavorite() async {
    final db = SqfliteDb();
    final fav = await db.isFavorite(widget.id);
    if (mounted) setState(() => isFavorite = fav);
  }

  Future<void> _toggleFavorite() async {
    final db = SqfliteDb();
    if (isFavorite) {
      await db.deleteFavorite(widget.id);
    } else {
      await db.insertFavorite(
        FavoriteRecipe(
          id: widget.id.toString(),
          title: widget.title,
          imageUrl: widget.imageUrl,
        ),
      );
    }
    setState(() => isFavorite = !isFavorite);
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15.0,
      backgroundColor: Colors.white,
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          size: 18.0,
          color: isFavorite ? Colors.red : Colors.black54,
        ),
        onPressed: _toggleFavorite,
      ),
    );
  }
}
