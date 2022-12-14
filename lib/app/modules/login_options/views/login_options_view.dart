import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/login_options_controller.dart';

class LoginOptionsView extends GetView<LoginOptionsController> {
  const LoginOptionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/Blue Background PNG 1.png"),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  const SizedBox(
                      width: double.maxFinite,
                      child: Center(
                          child: Text(
                        "Join as a",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 32,
                            color: Colors.white),
                      ))),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const Center(
                          child: Text(
                        "User or Professional Photographer",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.white),
                      ))),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          controller.forFirstOption.value = true;
                          Future.delayed(const Duration(milliseconds: 1000))
                              .then((value) {
                            Get.offAndToNamed('/normal-user-create-new-account');
                         //   Get.to()
                            });
                        },
                        child: controller.forFirstOption.value != false

                            //for container iffect
                            ? Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(blurRadius: 10)],
                                    color: HexColor("#0D86BF"),
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Spacer(),
                                      Expanded(
                                          flex: 2,
                                          child: Image.asset(
                                              'assets/images/Self 1.png')),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Expanded(
                                          flex: 4,
                                          child: Text(
                                            "Looking for a\nPhotographer",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15),
                                          )),
                                    ],
                                  ),
                                ),
                              )
                            : Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(blurRadius: 10)],
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Spacer(),
                                      Expanded(
                                          flex: 2,
                                          child: Image.asset(
                                              'assets/images/img.png')),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Expanded(
                                          flex: 4,
                                          child: Text(
                                            "Looking for a\nPhotographer",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: 300,
                        child: Divider(
                          color: Colors.white,
                          thickness: 1.5,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {

                          controller.forSecoundOption.value=true;
                          Future.delayed(const Duration(milliseconds: 1000))
                              .then((value) {
                            Get.offAndToNamed('/register');
                          });

                        },
                        child: controller.forSecoundOption.value != false
                            ? Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(blurRadius: 15)],
                                    color: HexColor("#0D86BF"),
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Spacer(),
                                      Expanded(
                                          flex: 2,
                                          child: Image.asset(
                                              'assets/images/Photographer 1.png')),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                          flex: 4,
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            child: const Text(
                                              "I am a Photographer",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              )
                            : Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(blurRadius: 15)],
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Spacer(),
                                      Expanded(
                                          flex: 2,
                                          child: Image.asset(
                                              'assets/images/img_1.png')),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                          flex: 4,
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            child: const Text(
                                              "I am a Photographer",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            )));
  }
}
