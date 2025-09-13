import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPostCard extends StatelessWidget {
  const CustomPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            spreadRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// ====== Header (Profile + Name + Time) ======
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("assets/images/image.png"),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Romisaa Fadel",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "2 hrs ago",
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              Icon(Icons.more_horiz, color: Colors.grey.shade700),
            ],
          ),

          SizedBox(height: 10.h),

          Text(
            "دا مش جهاز عروسة دي الضروريات اللي هاخدها كمان شهر",
            style: TextStyle(fontSize: 14.sp),
          ),

          SizedBox(height: 10.h),

          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              "assets/images/post.jpg",
              height: 200.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    size: 20,
                    color: Colors.grey.shade700,
                  ),
                  SizedBox(width: 6.w),
                  Text("120", style: TextStyle(fontSize: 12.sp)),
                ],
              ),
              Row(
                children: [
                  Text(
                    "45 Comments",
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "10 Shares",
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),

          Divider(height: 20.h, thickness: 1, color: Colors.grey.shade300),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildAction(Icons.thumb_up_alt_outlined, "Like"),
              _buildAction(Icons.comment_outlined, "Comment"),
              _buildAction(Icons.share_outlined, "Share"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAction(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey.shade700),
        SizedBox(width: 6.w),
        Text(
          label,
          style: TextStyle(color: Colors.grey.shade700, fontSize: 13.sp),
        ),
      ],
    );
  }
}
