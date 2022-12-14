import 'package:get/get.dart';

import '../controllers/your_professional_controller.dart';

class YourProfessionalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourProfessionalController>(
      () => YourProfessionalController(),
    );
  }
}
