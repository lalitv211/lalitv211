import 'package:get/get.dart';

import '../controllers/document_verification_controller.dart';

class DocumentVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentVerificationController>(
      () => DocumentVerificationController(),
    );
  }
}
