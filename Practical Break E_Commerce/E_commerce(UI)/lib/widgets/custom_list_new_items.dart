import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/widgets/custom_list_item_new_home.dart';
import 'package:flutter/material.dart';


class CustomListNewItems extends StatelessWidget {
  const CustomListNewItems({super.key});

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
            child: CustomListItemNewHome(product: dummyProducts[index]),
          ); 
        },
      ),
    );
  }
}
