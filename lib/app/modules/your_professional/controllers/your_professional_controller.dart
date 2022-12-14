import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:morvi/app/modules/your_professional/views/your_professional_view.dart';

class YourProfessionalController extends GetxController {
  //TODO: Implement YourProfessionalController
  int id=1;


  RxList<dynamic>selectedList = [].obs;


  List<String> images = [
    'assets/images/Rectangle 7.png',
    'assets/images/Rectangle 7.png',
    'assets/images/Rectangle 7.png',
    'assets/images/Rectangle 14.png',
     'assets/images/Rectangle 14.png',
     'assets/images/Rectangle 14.png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 21(1).png',
    'assets/images/Rectangle 21(1).png',
    'assets/images/Rectangle 21(1).png',
    'assets/images/Rectangle 24.png',
    'assets/images/Rectangle 24.png',
    'assets/images/Rectangle 24.png',
    'assets/images/Rectangle 7(1).png',
    'assets/images/Rectangle 7(1).png',
    'assets/images/Rectangle 7(1).png',
    'assets/images/Rectangle 12(1).png',
    'assets/images/Rectangle 12(1).png',
    'assets/images/Rectangle 12(1).png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 15.png',
  ].obs;




  List<Service> gridList = [

    Service(name: 'Photo\nStudio',id: 1),
    Service(name: 'Camera\nOperator',id: 2),
    Service(name: 'Candid\nPhotography',id: 3),

    Service(name: 'Freelancer\nModeling\nPhotographer',id: 4),
     Service(name: 'Industrial\nPhotographer',id: 5),
     Service(name: 'Equipments\nOn Rent',id: 6),
    Service(name: 'Photo\nAlbum\nDesigner',id: 7),
    Service(name: 'Photo\nAlbum\nDesigner',id: 8),
    Service(name: 'Video\nMixing',id: 9),
    Service(name: 'Photo\nFramer\nMaking',id: 10),
    Service(name: 'Live\nVideo\nSetup',id: 11),
    Service(name: 'Photography\nInstitute',id: 12),
    Service(name: 'Accessories\nPrint\nMaker',id: 13),
    Service(name: 'Camera\nRepairing',id: 14),
    Service(name: 'Material\nSupplier',id: 15),
    Service(name: 'Photo\nLab',id: 16),
    Service(name: 'News\nPhotography',id: 17),
    Service(name: 'Wild Life\nPhotography',id: 18),
    Service(name: 'Camera\nAnalyzer',id: 19),
    Service(name: 'Medical\nPhotography',id: 20),
    Service(name: 'Micro\nPhotography',id: 21),
    Service(name: 'War\nPhotography',id: 22),
    Service(name: 'Cinema\nPhotography',id: 23),
    Service(name: 'Underwater\nPhotography',id: 24),
    Service(name: 'Fashion\nPhotography',id: 25),
    Service(name: 'Forensic\nPhotography',id: 26),
    Service(name: 'Drone\nPhotography',id: 27),
    Service(name: 'Food\nPhotography',id:28),
  ].obs as List<Service>;












  final count = 0.obs;

  void increment() => count.value++;
}
