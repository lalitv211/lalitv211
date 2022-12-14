import 'package:get/get.dart';

import '../controllers/equipments_add_new_page_controller.dart';

class EquipmentsAddNewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EquipmentsAddNewPageController>(
      () => EquipmentsAddNewPageController(),
    );
  }
}
