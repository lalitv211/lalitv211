import 'package:get/get.dart';

import '../controllers/normal_user_otp_controller.dart';

class NormalUserOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NormalUserOtpController>(
      () => NormalUserOtpController(),
    );
  }
}
