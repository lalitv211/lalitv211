import 'package:get/get.dart';

class ProfileSettingsBusinessController extends GetxController {
  //TODO: Implement ProfileSettingsBusinessController
  RxBool isEditAbout = false.obs;
  RxBool isEditAddress = false.obs;


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
