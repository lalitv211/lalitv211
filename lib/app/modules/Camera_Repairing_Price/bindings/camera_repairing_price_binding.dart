import 'package:get/get.dart';

import '../controllers/camera_repairing_price_controller.dart';

class CameraRepairingPriceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CameraRepairingPriceController>(
      () => CameraRepairingPriceController(),
    );
  }
}
