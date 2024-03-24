import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Login/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text('Login'),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: controller.emailController.value,
                    decoration: const InputDecoration(
                      hintText: 'email',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: controller.passwordController.value,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'password',
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      controller.loginApi();
                    },
                    child: Container(
                      height: 45,
                      width: double.infinity / 1.2,
                      color: Colors.grey,
                      child: const Center(child: Text('Login')),
                    ),
                  )
                ],
              ),
            ),
          ),
          if (controller.loading.value == true)
            Positioned.fill(
              child: Container(
                color: Colors.black
                    .withOpacity(0.5), // Semi-transparent black color
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
