import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/your_proffession_controller.dart';

// ignore: must_be_immutable
class YourProffessionView extends GetView<YourProffessionController> {
  YourProffessionView({Key? key}) : super(key: key);
  List<String> widgetList = [
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.maxFinite,
            child: Card(
              elevation: 3,
              margin: EdgeInsets.zero,
              color: const Color(0xff0D86BF),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset('assets/img_5.png')),
                    const Text(
                      "Your Professional",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 21,
                          color: Colors.white),
                    ),
                    const Text(
                      " ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 21,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Select Your Professional",
            style: TextStyle(
                color: Color(0xff076c9c),
                fontWeight: FontWeight.w700,
                fontSize: 22),
          ),
          GridView.count(
            crossAxisCount: 3,
            padding: const EdgeInsets.all(8),
            controller: ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: widgetList.map((String value) {
              return GestureDetector(
                onTap: (){
                  Get.toNamed(Routes.HOME);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150.0,
                    color: Colors.green,
                    margin: const EdgeInsets.all(1.0),
                    child: Center(
                      child: Text(
                        value,
                        style:
                            const TextStyle(fontSize: 50.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    ));
  }
}
