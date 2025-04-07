
import 'package:flutter/material.dart';
import 'package:task2/core/constants.dart';
import 'package:task2/core/styles.dart';
import 'package:task2/models/product.dart';
import 'package:task2/widgets/custom_container_widget.dart';
import 'package:task2/widgets/stars_rate.dart';


class CustomListItemSaleHome extends StatefulWidget {
  const CustomListItemSaleHome({super.key, required this.product});
  final Product product;

  @override
  State<CustomListItemSaleHome> createState() => _CustomListItemSaleHomeState();
}

class _CustomListItemSaleHomeState extends State<CustomListItemSaleHome> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    double priceAfterDiscount = widget.product.price +
        (widget.product.price * (widget.product.discountValue! / 100));
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/productDetails', arguments: widget.product);
      },
      child: SizedBox(
        height: 260,
        width: 148,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 1,
              )
            ],
          ),
          child: Stack(clipBehavior: Clip.none, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        widget.product.imageUrl,
                        height: 184,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    CustomcontainerWidget(
                      color: KprimaryColor,
                        value: '- ${widget.product.discountValue}%',
                        product: widget.product),
                    Positioned(
                      top: 155,
                      right: 5,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 3,
                            )
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: isFavorite ? Colors.red : Colors.black45,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StarsRate(),
                      Text(
                        widget.product.category,
                        style: Styles.textStyle12.copyWith(color: Colors.grey),
                      ),
                      Text(
                        widget.product.title,
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            '$priceAfterDiscount  ',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            '${widget.product.price} \$',
                            style: Styles.textStyle14
                                .copyWith(color: KprimaryColor),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
