import 'package:get/get.dart';

import '../controllers/photography_institute_price_add_new_page_controller.dart';

class PhotographyInstitutePriceAddNewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotographyInstitutePriceAddNewPageController>(
      () => PhotographyInstitutePriceAddNewPageController(),
    );
  }
}
