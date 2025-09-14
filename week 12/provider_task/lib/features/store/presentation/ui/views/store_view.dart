import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_task/core/helper/extentions.dart';
import 'package:provider_task/core/theme/text_theme.dart';
import 'package:provider_task/core/utils/app_router.dart';
import 'package:provider_task/core/widgets/background_widget.dart';
import 'package:provider_task/features/store/presentation/ui/widgets/product_card.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Column(
        children: [
          30.ph,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My Store", style: TextAppTheme.textStyle22),
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.cartview);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.h),
              children: [
                ProductCard(
                  name: "Shoes",
                  price: 200,
                  image:
                      "https://fastarz.com/wp-content/uploads/2024/06/scale_1200.jpeg",
                ),
                12.ph,
                ProductCard(
                  name: "Bag",
                  price: 150,
                  image:
                      "https://img.freepik.com/free-photo/young-smiling-girl-pink-jacket-looking-camera-with-shopping-bags-hand-clothing-store-pretty-lady-standing-boutique-with-colorful-pockets-sale-clothes-rack-background_574295-227.jpg",
                ),
                12.ph,
                ProductCard(
                  name: "T-Shirt",
                  price: 100,
                  image:
                      "https://tse3.mm.bing.net/th/id/OIP.ZOpy5-21Ci5VFAZ-riZhrwHaE8?w=1024&h=683&rs=1&pid=ImgDetMain&o=7&rm=3",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
