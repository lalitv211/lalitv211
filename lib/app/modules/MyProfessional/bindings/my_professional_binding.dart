import 'package:get/get.dart';

import '../controllers/my_professional_controller.dart';

class MyProfessionalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyProfessionalController>(
      () => MyProfessionalController(),
    );
  }
}
