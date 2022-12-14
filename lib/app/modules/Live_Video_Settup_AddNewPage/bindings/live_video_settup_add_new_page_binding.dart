import 'package:get/get.dart';

import '../controllers/live_video_settup_add_new_page_controller.dart';

class LiveVideoSettupAddNewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LiveVideoSettupAddNewPageController>(
      () => LiveVideoSettupAddNewPageController(),
    );
  }
}
