import 'package:get/get.dart';
import 'package:morvi/app/modules/your_professional/controllers/your_professional_controller.dart';

class ProfessionalTabController extends GetxController {
  //TODO: Implement ProfessionalTabController

  final count = 0.obs;
  int idFromFirstController = Get.find<YourProfessionalController>().id;





  void increment() => count.value++;
}
