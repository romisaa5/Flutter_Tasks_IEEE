import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_task/core/helper/extentions.dart';
import 'package:provider_task/core/widgets/background_widget.dart';
import 'package:provider_task/features/home/presentation/ui/widgets/custom_circle_list.dart';
import 'package:provider_task/features/home/presentation/ui/widgets/custom_post_card.dart';
import 'package:provider_task/features/home/presentation/ui/widgets/post_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.h,
            children: [
              10.ph,
              Row(
                spacing: 8,
                children: [
                  Image.asset('assets/images/logo.png'),
                  60.pw,
                  Icon(Icons.search),
                  Icon(Icons.notification_important),
                  Icon(Icons.send),
                ],
              ),
              10.ph,
              PostBox(avatarUrl: 'assets/images/image.png'),
              CircleListWidget(),
              SizedBox(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: CustomPostCard(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
