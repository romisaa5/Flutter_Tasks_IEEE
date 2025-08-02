import 'package:expenzo_app/features/home/presentation/models/category.dart';
import 'package:flutter/material.dart';

class CategoryDropdown extends StatelessWidget {
  final List<Category> categories;
  final Category? selectedCategory;
  final ValueChanged<Category?> onChanged;

  const CategoryDropdown({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Category>(
      value: selectedCategory,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: 'Category',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey, width: 2),
        ),
      ),
      items: categories
          .map(
            (cat) => DropdownMenuItem(
              value: cat,
              child: Row(
                children: [
                  Image.asset(cat.imageUrl, width: 24, height: 24),
                  const SizedBox(width: 8),
                  Text(cat.name),
                ],
              ),
            ),
          )
          .toList(),
      onChanged: onChanged,
      validator: (value) {
        if (value == null) return 'Please select a category';
        return null;
      },
    );
  }
}
