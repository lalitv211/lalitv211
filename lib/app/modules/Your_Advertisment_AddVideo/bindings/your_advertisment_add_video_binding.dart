import 'package:get/get.dart';

import '../controllers/your_advertisment_add_video_controller.dart';

class YourAdvertismentAddVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourAdvertismentAddVideoController>(
      () => YourAdvertismentAddVideoController(),
    );
  }
}
