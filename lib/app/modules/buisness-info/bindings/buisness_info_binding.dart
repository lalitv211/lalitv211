import 'package:get/get.dart';

import '../controllers/buisness_info_controller.dart';

class BuisnessInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuisnessInfoController>(
      () => BuisnessInfoController(),
    );
  }
}
