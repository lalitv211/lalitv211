import 'package:get/get.dart';

import '../controllers/live_video_settup_page_controller.dart';

class LiveVideoSettupPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LiveVideoSettupPageController>(
      () => LiveVideoSettupPageController(),
    );
  }
}
