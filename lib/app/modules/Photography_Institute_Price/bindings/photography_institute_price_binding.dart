import 'package:get/get.dart';

import '../controllers/photography_institute_price_controller.dart';

class PhotographyInstitutePriceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotographyInstitutePriceController>(
      () => PhotographyInstitutePriceController(),
    );
  }
}
