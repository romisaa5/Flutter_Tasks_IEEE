import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_task/core/helper/extentions.dart';
import 'package:provider_task/core/utils/app_router.dart';
import 'package:provider_task/core/widgets/background_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  child: CircleAvatar(
                    radius: 50.r,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 46.r,
                      backgroundImage: const AssetImage(
                        "assets/images/image.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            50.ph,
            Text(
              "Romisaa Mohamed Fadel",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.h),
            Text(
              "Flutter Developer | Computer Science",
              style: TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
            ),
            SizedBox(height: 12.h),

            /// Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text("Add to Story"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                ),
                SizedBox(width: 10.w),
                OutlinedButton.icon(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.editProfile);
                  },
                  icon: const Icon(Icons.edit, color: Colors.blue),
                  label: const Text("Edit Profile"),
                ),
              ],
            ),

            Divider(height: 30.h, thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Posts", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("About"),
                Text("Friends"),
                Text("Photos"),
              ],
            ),
            Divider(height: 30.h, thickness: 1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  "assets/images/image.png",
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Romisaa Mohamed Fadel",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "2 hrs ago",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text("لتحقيق السلام النفسي ="),
                          SizedBox(height: 10.h),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset("assets/images/post2.jpg"),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(Icons.thumb_up_alt_outlined, size: 20),
                              Icon(Icons.comment_outlined, size: 20),
                              Icon(Icons.share_outlined, size: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
