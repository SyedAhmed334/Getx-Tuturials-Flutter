import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'image_controller.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  final controller = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: controller.imageString.isNotEmpty
                    ? FileImage(File(controller.imageString.toString()))
                    : null,
              ),
            ),
            TextButton(
              onPressed: () {
                controller.getImage();
              },
              child: Text('Pick Image'),
            ),
          ],
        );
      }),
    );
  }
}
