import 'package:get/get.dart';

import '../controllers/photoframe_add_new_page_controller.dart';

class PhotoframeAddNewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotoframeAddNewPageController>(
      () => PhotoframeAddNewPageController(),
    );
  }
}
