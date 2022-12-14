import 'package:get/get.dart';

import '../controllers/add_product_sell_controller.dart';

class AddProductSellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddProductSellController>(
      () => AddProductSellController(),
    );
  }
}
