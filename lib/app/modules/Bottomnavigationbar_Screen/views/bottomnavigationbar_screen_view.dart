import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/bottomnavigationbar_screen_controller.dart';

class BottomnavigationbarScreenView
    extends GetView<BottomnavigationbarScreenController> {
  const BottomnavigationbarScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Professional',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Menu',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: controller.count.value,
        onTap: (index) {
          if (index == 0) {
            controller.count.value = index;
            Get.to(Routes.HOME);
          }
          if (index == 1) {
            controller.count.value = index;
            Get.toNamed("/professional-tab");
          }
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),

    );

  }
}
