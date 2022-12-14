import 'package:get/get.dart';

import '../controllers/your_advertisement_controller.dart';

class YourAdvertisementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourAdvertisementController>(
      () => YourAdvertisementController(),
    );
  }
}
