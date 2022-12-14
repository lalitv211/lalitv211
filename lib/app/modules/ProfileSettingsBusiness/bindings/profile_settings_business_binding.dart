import 'package:get/get.dart';

import '../controllers/profile_settings_business_controller.dart';

class ProfileSettingsBusinessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileSettingsBusinessController>(
      () => ProfileSettingsBusinessController(),
    );
  }
}
