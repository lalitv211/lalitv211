import 'package:get/get.dart';

import '../controllers/normal_user_signup_success_controller.dart';

class NormalUserSignupSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NormalUserSignupSuccessController>(
      () => NormalUserSignupSuccessController(),
    );
  }
}
