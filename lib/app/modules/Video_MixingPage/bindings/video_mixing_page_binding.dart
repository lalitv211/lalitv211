import 'package:get/get.dart';

import '../controllers/video_mixing_page_controller.dart';

class VideoMixingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoMixingPageController>(
      () => VideoMixingPageController(),
    );
  }
}
