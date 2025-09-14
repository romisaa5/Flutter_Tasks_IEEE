import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_task/core/helper/extentions.dart';
import 'package:provider_task/core/theme/text_theme.dart';
import 'package:provider_task/core/widgets/background_widget.dart';
import 'package:provider_task/features/profile/presentation/ui/widgets/change_acount_image.dart';
import 'package:provider_task/features/profile/presentation/ui/widgets/custom_listtile_app_settings.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.ph,
            Align(
              alignment: Alignment.center,
              child: Text('Edit Profile', style: TextAppTheme.textStyle22),
            ),
            20.ph,
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 60,
                child: Icon(Icons.person, size: 60.sp, color: Colors.grey),
              ),
            ),
            20.ph,
            Align(
              alignment: Alignment.center,
              child: Text('Martha Hays', style: TextAppTheme.textStyle18),
            ),
            10.ph,
            Divider(indent: 25.w, endIndent: 25.w),
            10.ph,
            Text('Account', style: TextAppTheme.textStyle18),
            10.ph,
            CustomListtileAppSettings(
              icon: Icons.person_2_outlined,
              title: 'Change account name',
            ),
            CustomListtileAppSettings(
              icon: Icons.lock,
              title: 'Change account password',
            ),
            ChangeAcountImage(),
          ],
        ),
      ),
    );
  }
}
