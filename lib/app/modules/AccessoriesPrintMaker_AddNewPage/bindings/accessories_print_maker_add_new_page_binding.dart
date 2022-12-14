import 'package:get/get.dart';

import '../controllers/accessories_print_maker_add_new_page_controller.dart';

class AccessoriesPrintMakerAddNewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccessoriesPrintMakerAddNewPageController>(
      () => AccessoriesPrintMakerAddNewPageController(),
    );
  }
}
