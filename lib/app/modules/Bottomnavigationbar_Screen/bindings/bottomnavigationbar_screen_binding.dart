import 'package:get/get.dart';

import '../controllers/bottomnavigationbar_screen_controller.dart';

class BottomnavigationbarScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomnavigationbarScreenController>(
      () => BottomnavigationbarScreenController(),
    );
  }
}
