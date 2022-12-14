import 'package:get/get.dart';

import '../controllers/camera_analyzer_consultancy_fee_add_new_controller.dart';

class CameraAnalyzerConsultancyFeeAddNewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CameraAnalyzerConsultancyFeeAddNewController>(
      () => CameraAnalyzerConsultancyFeeAddNewController(),
    );
  }
}
