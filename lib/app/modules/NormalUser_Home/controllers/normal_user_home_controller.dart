import 'package:get/get.dart';

class NormalUserHomeController extends GetxController {
  //TODO: Implement NormalUserHomeController
  RxBool isEdit = false.obs;
  RxDouble currentIndex = 0.0.obs;

  final count = 0.obs;

   @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
