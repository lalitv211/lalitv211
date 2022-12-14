import 'package:get/get.dart';

import '../controllers/terms_and_conditopns_page_controller.dart';

class TermsAndConditopnsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsAndConditopnsPageController>(
      () => TermsAndConditopnsPageController(),
    );
  }
}
