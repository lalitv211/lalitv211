import 'package:get/get.dart';
import 'package:morvi/app/modules/MyProfessional/views/my_professional_view.dart';

class MyProfessionalController extends GetxController {
  //TODO: Implement MyProfessionalController

  RxList images = [
    'assets/images/Rectangle 7(1).png',
    'assets/images/Rectangle 7(3).png',
    'assets/images/Rectangle 7(4).png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 7(1).png',
  ].obs;

  RxList<forchaack> lalit = [
    forchaack(name: 'Photo Studio', id: 1),
    forchaack(name: 'Candid\nPhotography', id: 2),
    forchaack(name: "Equipments\nOn Rent", id: 3),
    forchaack(name: "Industrial\nPhotographer", id: 4),
    forchaack(name: "Freelancer\nModeling\nPhotographer", id: 5),
  ].obs;

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
