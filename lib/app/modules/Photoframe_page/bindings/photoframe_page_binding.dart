import 'package:get/get.dart';

import '../controllers/photoframe_page_controller.dart';

class PhotoframePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotoframePageController>(
      () => PhotoframePageController(),
    );
  }
}
