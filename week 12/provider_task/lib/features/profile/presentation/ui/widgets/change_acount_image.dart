import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider_task/features/profile/presentation/ui/widgets/custom_listtile_app_settings.dart';
import 'package:provider_task/features/profile/presentation/ui/widgets/profile_image_picker.dart';

class ChangeAcountImage extends StatefulWidget {
  const ChangeAcountImage({super.key});

  @override
  State<ChangeAcountImage> createState() => _ChangeAcountImageState();
}

class _ChangeAcountImageState extends State<ChangeAcountImage> {
  File? imageFile;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomListtileAppSettings(
      title: 'Changea ccount Image',
      onTap: () async {
        await pickAndSaveImage(context: context, onImagePicked: (image) {});
      },
      icon: Icons.camera_alt_outlined,
    );
  }
}
