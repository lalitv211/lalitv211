import 'package:get/get.dart';

import '../controllers/normaluser_live_enquiry_add_new_controller.dart';

class NormaluserLiveEnquiryAddNewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NormaluserLiveEnquiryAddNewController>(
      () => NormaluserLiveEnquiryAddNewController(),
    );
  }
}
