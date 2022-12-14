import 'package:get/get.dart';

import '../controllers/professional_tab_controller.dart';

class ProfessionalTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfessionalTabController>(
      () => ProfessionalTabController(),
    );
  }
}
