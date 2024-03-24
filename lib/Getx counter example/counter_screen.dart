import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increamentCounter();
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            return Center(
              child: Text(controller.counter.string,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
            );
          }),
        ],
      ),
    );
  }
}
