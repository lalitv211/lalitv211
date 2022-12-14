import 'package:get/get.dart';

import '../controllers/video_mixing_add_new_page_controller.dart';

class VideoMixingAddNewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoMixingAddNewPageController>(
      () => VideoMixingAddNewPageController(),
    );
  }
}
