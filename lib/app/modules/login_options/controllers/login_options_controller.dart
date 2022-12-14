import 'package:get/get.dart';

class LoginOptionsController extends GetxController {
  //TODO: Implement LoginOptionsController

  final count = 0.obs;

  RxBool forFirstOption= false.obs;
  RxBool forSecoundOption=false.obs;



  void increment() => count.value++;
}
