
import 'package:flutter/material.dart';
import 'package:task2/models/product.dart';
import 'package:task2/widgets/custom_list_item_sale_home.dart';
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
