import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Getx%20Imagepicker/image_screen.dart';
import 'package:getx_practice/Login/login_screen.dart';
import 'package:getx_practice/Mark%20Favorite%20example/favorite_screen.dart';
import 'package:getx_practice/Routes/screen1.dart';
import 'package:getx_practice/home_page.dart';
import 'package:getx_practice/language/language.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('ur', 'PK'),
      home: const LoginScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/screenOne', page: () => const ScreenOne()),
      ],
    );
  }
}
