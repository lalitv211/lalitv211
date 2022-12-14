import 'package:get/get.dart';

import '../controllers/camera_repairing_price_add_new_controller.dart';

class CameraRepairingPriceAddNewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CameraRepairingPriceAddNewController>(
      () => CameraRepairingPriceAddNewController(),
    );
  }
}
