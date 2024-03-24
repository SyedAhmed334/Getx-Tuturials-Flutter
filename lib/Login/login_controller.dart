import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi() async {
    try {
      loading.value = true;
      Map<String, String> newData = {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      };
      var response = await post(Uri.parse('https://reqres.in/api/login'),
          body: jsonEncode(newData));
      var data = jsonDecode(response.body);
      print(response.statusCode.toString());
      print(data.toString());
      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Login Successful', 'very very nice');
      } else {
        loading.value = false;
        Get.snackbar('Login failed', 'very very bad scenes');
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar(e.toString(), '(:');
    }
  }
}
