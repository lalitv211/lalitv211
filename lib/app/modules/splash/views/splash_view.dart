import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.toNamed('/onboarding');
    });
    return Scaffold(
      body: SizedBox(
          width: double.maxFinite,
          child: Image.asset(
            'assets/images/Rectangle 1.png',
            fit: BoxFit.fitWidth,
          )),
    );
  }
}
