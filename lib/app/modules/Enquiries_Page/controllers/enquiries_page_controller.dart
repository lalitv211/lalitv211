import 'package:get/get.dart';

class EnquiriesPageController extends GetxController {
  //TODO: Implement EnquiriesPageController
  RxBool forIndore = false.obs;
  RxBool forBhopal = false.obs;
  RxBool forJabalpur = false.obs;
  RxBool forRatlam = false.obs;
  RxBool forHoshangabad = false.obs;
  RxBool forDewas = false.obs;
  RxBool forItarshi = false.obs;
  RxBool forMandsaur = false.obs;
  RxBool showPlaces= false.obs;

  RxBool forSearch=false.obs;


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
