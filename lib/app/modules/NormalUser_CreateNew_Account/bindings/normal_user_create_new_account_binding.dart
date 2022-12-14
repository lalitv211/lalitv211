import 'package:get/get.dart';

import '../controllers/normal_user_create_new_account_controller.dart';

class NormalUserCreateNewAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NormalUserCreateNewAccountController>(
      () => NormalUserCreateNewAccountController(),
    );
  }
}
