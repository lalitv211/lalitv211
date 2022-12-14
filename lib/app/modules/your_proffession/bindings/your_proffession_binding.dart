import 'package:get/get.dart';

import '../controllers/your_proffession_controller.dart';

class YourProffessionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourProffessionController>(
      () => YourProffessionController(),
    );
  }
}
