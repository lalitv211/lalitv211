import 'package:get/get.dart';

import '../controllers/your_advertisment_add_text_controller.dart';

class YourAdvertismentAddTextBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourAdvertismentAddTextController>(
      () => YourAdvertismentAddTextController(),
    );
  }
}
