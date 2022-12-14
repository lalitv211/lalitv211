import 'package:get/get.dart';

import '../controllers/data_policy_page_controller.dart';

class DataPolicyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataPolicyPageController>(
      () => DataPolicyPageController(),
    );
  }
}
