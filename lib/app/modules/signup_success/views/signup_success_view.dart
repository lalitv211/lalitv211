import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/signup_success_controller.dart';

class SignupSuccessView extends GetView<SignupSuccessController> {
  const SignupSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1500)).then((value) {
      Get.toNamed(Routes.YOUR_PROFESSIONAL);
    });
    return Scaffold(
        body: SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Image.asset(
              'assets/images/img_4.png',
              fit: BoxFit.cover,
            )));


  }
}
