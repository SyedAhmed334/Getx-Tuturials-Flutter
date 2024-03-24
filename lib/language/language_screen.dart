import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Screen'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('message'.tr),
          Text('name'.tr),
          ElevatedButton(
            onPressed: () {
              Get.updateLocale(
                Locale('en', 'US'),
              );
            },
            child: const Text(
              'English',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.updateLocale(
                Locale('ur', 'PK'),
              );
            },
            child: const Text(
              'اردو',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
