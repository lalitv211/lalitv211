import 'package:get/get.dart';

import '../controllers/equipments_on_rent_page_controller.dart';

class EquipmentsOnRentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EquipmentsOnRentPageController>(
      () => EquipmentsOnRentPageController(),
    );
  }
}
