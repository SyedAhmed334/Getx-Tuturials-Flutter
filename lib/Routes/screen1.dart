import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/home_page.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({
    super.key,
  });

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final map = Get.parameters;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(Get.parameters['name'].toString())),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Get.offNamed('/');
              },
              child: const Text(
                'Go back',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
