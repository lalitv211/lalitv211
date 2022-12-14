import 'package:get/get.dart';

class NormaluserProfileSettingsController extends GetxController {
  //TODO: Implement NormaluserProfileSettingsController
  RxBool isEdit = false.obs;
  RxBool isPasswordEdit = false.obs;
  RxBool isPlaseEdit = false.obs;

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
