import 'package:get/get.dart';

import '../controllers/accessories_print_maker_controller.dart';

class AccessoriesPrintMakerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccessoriesPrintMakerController>(
      () => AccessoriesPrintMakerController(),
    );
  }
}
