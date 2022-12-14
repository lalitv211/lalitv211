import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
RxBool isEdit = false.obs;
RxDouble currentIndex = 0.0.obs;

  final count = 0.obs;



  void increment() => count.value++;
}
