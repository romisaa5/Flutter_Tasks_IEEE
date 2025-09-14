import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_task/core/helper/extentions.dart';
import 'package:provider_task/core/theme/text_theme.dart';

class ProductCard extends StatefulWidget {
  final String name;
  final double price;
  final String image;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.network(
                widget.image,
                width: 80.w,
                height: 80.h,
                fit: BoxFit.cover,
              ),
            ),
            16.pw,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name, style: TextAppTheme.textStyle18),
                  const SizedBox(height: 4),
                  Text(
                    "Price: \$${widget.price * count}",
                    style: TextAppTheme.textStyle14,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    if (count > 0) {
                      setState(() {
                        count--;
                      });
                    }
                  },
                ),
                Text(
                  "$count",
                  style: TextAppTheme.textStyle16.copyWith(color: Colors.black),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
