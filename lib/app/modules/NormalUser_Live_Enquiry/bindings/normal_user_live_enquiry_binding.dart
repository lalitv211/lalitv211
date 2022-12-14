import 'package:get/get.dart';

import '../controllers/normal_user_live_enquiry_controller.dart';

class NormalUserLiveEnquiryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NormalUserLiveEnquiryController>(
      () => NormalUserLiveEnquiryController(),
    );
  }
}
