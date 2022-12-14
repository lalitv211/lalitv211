import 'dart:developer';
import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:morvi/app/modules/your_professional/views/your_professional_view.dart';

import '../controllers/your_professional_controller.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multiselect_scope/multiselect_scope.dart';

// ignore: must_be_immutable
class YourProfessionalView extends GetView<YourProfessionalController> {
  YourProfessionalView({Key? key}) : super(key: key);

// bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor("#0D86BF"),
            centerTitle: true,
            title: const Text(
              "Your Professional",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Select Your Profession",
                style: TextStyle(
                    color: Color(0xff076C9C),
                    fontWeight: FontWeight.w700,
                    fontSize: 26),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.4,
                width: double.maxFinite,
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: controller.images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 8,
                    ),
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    itemBuilder: (BuildContext context, int index) {
                      return Obx(() => InkWell(
                            onTap: () {
                               if (controller.selectedList.contains(
                                  controller.gridList[index].id.toString())) {
                                controller.selectedList.remove(
                                    controller.gridList[index].id.toString());
                              } else {
                                controller.selectedList.add(
                                    controller.gridList[index].id.toString());
                              }


                              print(controller.gridList[index].obs);
                            },
                            child: Container(
                              child: Stack(
                                children: [
                                  Image.asset(controller.images[index]),
                                  Center(
                                    child: Positioned(
                                        child: Center(
                                            child: controller.selectedList
                                                    .contains(controller
                                                        .gridList[index].id
                                                        .toString())
                                                ? Icon(Icons.done_all,color: HexColor("#0D86BF"),)
                                                : Text(
                                                    controller
                                                        .gridList[index].name,
                                                    style: TextStyle(
                                                        color:
                                                            HexColor("#FFFFFF"),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 13),
                                                  ))),
                                  )
                                ],
                              ),
                            ),
                             ));
                    }),
              )
            ],
          ),
          bottomNavigationBar: InkWell(
            onTap: () {
              if (controller.selectedList.length <= 5) {
                Get.toNamed('home',);
              } else {
                showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: Image.asset('assets/old_images/img_1.png'),
                          content: const Text(
                            'You can Select only upto 5 professions',
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            Center(
                              child: SizedBox(
                                width: 100,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff0D86BF)),
                                  child: const Text(
                                    "Go Back",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ));
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                        color: HexColor("#0D86BF"),
                        borderRadius: BorderRadius.circular(2)),
                    child: Center(
                        child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 1.32,
                    top: 15,
                    child: Image.asset("assets/images/Vector(15).png"),
                    height: 46,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class Service {
  final String name;
  final int id;

  Service({
    required this.name,
    required this.id,
  });
}

class Selected {
  final String name;

  Selected({required this.name});
}
