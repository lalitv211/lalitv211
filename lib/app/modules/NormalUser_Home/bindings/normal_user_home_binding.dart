import 'package:get/get.dart';

import '../controllers/normal_user_home_controller.dart';

class NormalUserHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NormalUserHomeController>(
      () => NormalUserHomeController(),
    );
  }
}
