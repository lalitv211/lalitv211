import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:morvi/app/routes/app_pages.dart';

import '../controllers/normal_user_signup_success_controller.dart';

class NormalUserSignupSuccessView
    extends GetView<NormalUserSignupSuccessController> {
  const NormalUserSignupSuccessView({Key? key}) : super(key: key);
  @override
 // Widget build(BuildContext context) {
    Widget build(BuildContext context) {
      Future.delayed(const Duration(milliseconds: 1500)).then((value) {
        Get.toNamed('/normal-user-home');
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
