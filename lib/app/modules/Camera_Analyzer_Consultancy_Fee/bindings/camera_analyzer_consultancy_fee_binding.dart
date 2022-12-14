import 'package:get/get.dart';

import '../controllers/camera_analyzer_consultancy_fee_controller.dart';

class CameraAnalyzerConsultancyFeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CameraAnalyzerConsultancyFeeController>(
      () => CameraAnalyzerConsultancyFeeController(),
    );
  }
}
