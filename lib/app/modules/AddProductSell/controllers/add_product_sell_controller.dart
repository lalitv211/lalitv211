import 'package:get/get.dart';

class AddProductSellController extends GetxController {
  //TODO: Implement AddProductSellController
  RxBool isInvoice = false.obs;
  RxBool forPhotosVideos = false.obs;


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
