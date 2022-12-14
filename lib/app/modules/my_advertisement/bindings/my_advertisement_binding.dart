import 'package:get/get.dart';

import '../controllers/my_advertisement_controller.dart';

class MyAdvertisementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyAdvertisementController>(
      () => MyAdvertisementController(),
    );
  }
}
