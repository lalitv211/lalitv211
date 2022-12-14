import 'package:get/get.dart';

import '../controllers/about_morvi_controller.dart';

class AboutMorviBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutMorviController>(
      () => AboutMorviController(),
    );
  }
}
