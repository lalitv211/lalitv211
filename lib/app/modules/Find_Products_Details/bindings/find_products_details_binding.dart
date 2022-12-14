import 'package:get/get.dart';

import '../controllers/find_products_details_controller.dart';

class FindProductsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindProductsDetailsController>(
      () => FindProductsDetailsController(),
    );
  }
}
