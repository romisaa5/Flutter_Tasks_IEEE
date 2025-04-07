
import 'package:flutter/material.dart';
import 'package:task2/core/constants.dart';
import 'package:task2/core/styles.dart';
import 'package:task2/models/product.dart';
class CustomcontainerWidget extends StatelessWidget {
  const CustomcontainerWidget(
      {super.key, required this.product, required this.value, required this.color});
  final Product product;
  final String value;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 40,
          height: 24,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(24)),
            child: Center(
                child: Text(
              value,
              style: Styles.textStyle12.copyWith(color: KbackgroundColor),
              textAlign: TextAlign.center,
            )),
          ),
        ),
      ),
    );
  }
}
