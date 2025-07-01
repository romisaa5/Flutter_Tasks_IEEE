
import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/widgets/custom_list_item_sale_home.dart';
import 'package:flutter/material.dart';

class CustomListSaleItems extends StatelessWidget {
  const CustomListSaleItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomListItemSaleHome(product: dummyProducts[index]),
          );
        },
      ),
    );
  }
}
