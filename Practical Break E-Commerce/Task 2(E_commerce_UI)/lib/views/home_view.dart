
import 'package:flutter/material.dart';
import 'package:task2/widgets/custom_bannar.dart';
import 'package:task2/widgets/custom_build_header.dart';
import 'package:task2/widgets/custom_list_new_items.dart';
import 'package:task2/widgets/custom_list_sale_items.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         CustomBannar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0,),
          child: Column(
            spacing: 10,
            children: [
              CustomBuildHeader(
                ontap: (){},
                title: 'Sale', 
                subTitle: 'Super summer sale'),
                CustomListSaleItems(),
                 CustomBuildHeader(
                ontap: (){},
                title: 'New', 
                subTitle: 'You’ve never seen it before!'),
              CustomListNewItems()
            ],
          ),
        ),
        ],
      ),
    );
  }
}
