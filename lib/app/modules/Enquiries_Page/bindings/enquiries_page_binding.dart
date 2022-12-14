import 'package:get/get.dart';

import '../controllers/enquiries_page_controller.dart';

class EnquiriesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnquiriesPageController>(
      () => EnquiriesPageController(),
    );
  }
}
