import 'package:get/get.dart';

import '../controllers/photo_lab_price_controller.dart';

class PhotoLabPriceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotoLabPriceController>(
      () => PhotoLabPriceController(),
    );
  }
}
