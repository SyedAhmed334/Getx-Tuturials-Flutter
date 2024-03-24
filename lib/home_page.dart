import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('GetX')),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.snackbar('Uzair', 'Hello bro hows you',
              snackPosition: SnackPosition.BOTTOM);
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed('/screenOne',
                    parameters: {'name': 'Screen One izs'});
                Get.snackbar('Hello user', 'this is new screen',
                    snackPosition: SnackPosition.TOP);
              },
              child: const Text(
                'Go to Next Screen',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
