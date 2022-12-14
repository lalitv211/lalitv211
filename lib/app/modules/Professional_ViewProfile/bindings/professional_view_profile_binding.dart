import 'package:get/get.dart';

import '../controllers/professional_view_profile_controller.dart';

class ProfessionalViewProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfessionalViewProfileController>(
      () => ProfessionalViewProfileController(),
    );
  }
}
