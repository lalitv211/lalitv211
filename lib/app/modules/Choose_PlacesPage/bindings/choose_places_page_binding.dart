import 'package:get/get.dart';

import '../controllers/choose_places_page_controller.dart';

class ChoosePlacesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChoosePlacesPageController>(
      () => ChoosePlacesPageController(),
    );
  }
}
