import 'package:get/get.dart';

import '../controllers/photostudio_material_supplies_add_new_controller.dart';

class PhotostudioMaterialSuppliesAddNewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotostudioMaterialSuppliesAddNewController>(
      () => PhotostudioMaterialSuppliesAddNewController(),
    );
  }
}
