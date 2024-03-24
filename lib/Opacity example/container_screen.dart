import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Opacity%20example/opacity_controller.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  double opacity = .4;
  final controller = Get.put(OpacityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.red.withOpacity(controller.opacity.value),
              width: 200,
              height: 200,
            ),
          ),
          Slider(
            value: controller.opacity.value,
            onChanged: (value) {
              controller.setOpacity(value);
            },
          )
        ],
      ),
    ));
  }
}
