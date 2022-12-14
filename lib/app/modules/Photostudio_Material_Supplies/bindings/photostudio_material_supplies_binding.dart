import 'package:get/get.dart';

import '../controllers/photostudio_material_supplies_controller.dart';

class PhotostudioMaterialSuppliesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotostudioMaterialSuppliesController>(
      () => PhotostudioMaterialSuppliesController(),
    );
  }
}
