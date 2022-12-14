import 'package:get/get.dart';

class YourAdvertisementController extends GetxController {
  //TODO: Implement YourAdvertisementController


  RxBool forIndore = false.obs;
  RxBool forBhopal = false.obs;
  RxBool forJabalpur = false.obs;
  RxBool forRatlam = false.obs;
  RxBool forHoshangabad = false.obs;
  RxBool forDewas = false.obs;
  RxBool forItarshi = false.obs;
  RxBool forMandsaur = false.obs;
  RxBool showPlaces=false.obs;

  final count = 0.obs;



  void increment() => count.value++;
}
