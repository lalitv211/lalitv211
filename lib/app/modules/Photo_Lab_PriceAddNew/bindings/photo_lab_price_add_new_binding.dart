import 'package:get/get.dart';

import '../controllers/photo_lab_price_add_new_controller.dart';

class PhotoLabPriceAddNewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotoLabPriceAddNewController>(
      () => PhotoLabPriceAddNewController(),
    );
  }
}
