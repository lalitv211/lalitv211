import 'package:get/get.dart';

import '../controllers/search_professionals_controller.dart';

class SearchProfessionalsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchProfessionalsController>(
      () => SearchProfessionalsController(),
    );
  }
}
