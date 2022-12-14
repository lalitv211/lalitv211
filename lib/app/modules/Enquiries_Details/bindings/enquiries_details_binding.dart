import 'package:get/get.dart';

import '../controllers/enquiries_details_controller.dart';

class EnquiriesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnquiriesDetailsController>(
      () => EnquiriesDetailsController(),
    );
  }
}
