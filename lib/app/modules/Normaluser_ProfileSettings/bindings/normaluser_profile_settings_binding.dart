import 'package:get/get.dart';

import '../controllers/normaluser_profile_settings_controller.dart';

class NormaluserProfileSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NormaluserProfileSettingsController>(
      () => NormaluserProfileSettingsController(),
    );
  }
}
