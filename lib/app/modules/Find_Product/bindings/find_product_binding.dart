import 'package:get/get.dart';

import '../controllers/find_product_controller.dart';

class FindProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindProductController>(
      () => FindProductController(),
    );
  }
}
