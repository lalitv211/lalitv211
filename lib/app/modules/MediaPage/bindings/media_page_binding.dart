import 'package:get/get.dart';

import '../controllers/media_page_controller.dart';

class MediaPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MediaPageController>(
      () => MediaPageController(),
    );
  }
}
