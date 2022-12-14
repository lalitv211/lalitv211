import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/your_advertisement_controller.dart';

class YourAdvertisementView extends GetView<YourAdvertisementController> {
  const YourAdvertisementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#0D86BF"),
          title: const Text(
            ' Your Advertisement ',
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/old_images/img_2.png'),
                  fit: BoxFit.fill)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Stack(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: Image.asset('assets/old_images/img_3.png')),
                  Positioned(
                      top: 60,
                      left: 30,
                      child: Text(
                        "Himalayan\nPhotoContest\n2022",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 30),
                      ))
                ],
              )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: const Color(0xff0D86BF),
                    width: 100,
                    height: 40,
                    child: const Center(
                        child: Text(
                      "Change",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  //font-family: Poppins;
                  // font-size: 14px;
                  // font-weight: 500;
                  // line-height: 14px;
                  // letter-spacing: 0em;
                  // text-align: center;
                  Container(
                    color: const Color(0xffCD3B32),
                    width: 100,
                    height: 40,
                    child: const Center(
                        child: Text(
                      "Remove",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              controller.showPlaces.value!= false

                  ? Column(
                      children: [
                        Text(
                          "Selected places",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 80,
                              color: HexColor("#0D86BF"),
                              child: Center(
                                child: Text(
                                  "Indore",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 40,
                                width: 80,
                                color: HexColor("#0D86BF"),
                                child: Center(
                                  child: Text(
                                    "Bhopal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ))
                          ],
                        )
                      ],
                    )
                  : Container(),

              Spacer(),
              Divider(
                thickness: 1,
                color: HexColor("#C0C0C0"),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                height: 65,
                width: double.maxFinite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                                height: MediaQuery.of(context).size.height,
                                color: Colors.white,
                                child: SingleChildScrollView(
                                  child: Obx(
                                    () => Column(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Add Places for Ad Run",
                                                  style: TextStyle(
                                                      color:
                                                          HexColor("#000000"),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 18),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: 30,
                                                  color: Colors.black,
                                                )
                                              ],
                                            )),
                                        Divider(
                                          thickness: 1,
                                          color: HexColor("#C0C0C0"),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  controller.forIndore.value =
                                                      true;
                                                },
                                                child:
                                                    controller.forIndore
                                                                .value !=
                                                            false
                                                        ? InkWell(
                                                            onTap: () {
                                                              controller
                                                                      .forIndore
                                                                      .value =
                                                                  false;
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: HexColor("#0D86BF"),
                                                                  border: Border.all(
                                                                      width: 1.5,
                                                                      color: HexColor(
                                                                        '#0D86BF',
                                                                      ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                30,
                                                                            bottom:
                                                                                3,
                                                                            top:
                                                                                4),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          size:
                                                                              10,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 15,
                                                                              right: 15,
                                                                              bottom: 13),
                                                                          child:
                                                                              Text(
                                                                            "Indore",
                                                                            style: TextStyle(
                                                                                color: HexColor("#FFFFFF"),
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    width: 1.5,
                                                                    color: HexColor(
                                                                      '#0D86BF',
                                                                    ))),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 15),
                                                              child: Text(
                                                                "Indore",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  controller.forBhopal.value =
                                                      true;
                                                },
                                                child:
                                                    controller.forBhopal
                                                                .value !=
                                                            false
                                                        ? InkWell(
                                                            onTap: () {
                                                              controller
                                                                      .forBhopal
                                                                      .value =
                                                                  false;
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: HexColor("#0D86BF"),
                                                                  border: Border.all(
                                                                      width: 1.5,
                                                                      color: HexColor(
                                                                        '#0D86BF',
                                                                      ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                30,
                                                                            bottom:
                                                                                3,
                                                                            top:
                                                                                4),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          size:
                                                                              10,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 15,
                                                                              right: 15,
                                                                              bottom: 13),
                                                                          child:
                                                                              Text(
                                                                            "Bhopal",
                                                                            style: TextStyle(
                                                                                color: HexColor("#FFFFFF"),
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    width: 1.5,
                                                                    color: HexColor(
                                                                      '#0D86BF',
                                                                    ))),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 15),
                                                              child: Text(
                                                                "Bhopal",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  controller.forJabalpur.value =
                                                      true;
                                                },
                                                child:
                                                    controller.forJabalpur
                                                                .value !=
                                                            false
                                                        ? InkWell(
                                                            onTap: () {
                                                              controller
                                                                  .forJabalpur
                                                                  .value = false;
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: HexColor("#0D86BF"),
                                                                  border: Border.all(
                                                                      width: 1.5,
                                                                      color: HexColor(
                                                                        '#0D86BF',
                                                                      ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                30,
                                                                            bottom:
                                                                                3,
                                                                            top:
                                                                                4),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          size:
                                                                              10,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 15,
                                                                              right: 15,
                                                                              bottom: 13),
                                                                          child:
                                                                              Text(
                                                                            "Jabalpur",
                                                                            style: TextStyle(
                                                                                color: HexColor("#FFFFFF"),
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    width: 1.5,
                                                                    color: HexColor(
                                                                      '#0D86BF',
                                                                    ))),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 15),
                                                              child: Text(
                                                                "Jabalpur",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  controller.forRatlam.value =
                                                      true;
                                                },
                                                child:
                                                    controller.forRatlam
                                                                .value !=
                                                            false
                                                        ? InkWell(
                                                            onTap: () {
                                                              controller
                                                                      .forRatlam
                                                                      .value =
                                                                  false;
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: HexColor("#0D86BF"),
                                                                  border: Border.all(
                                                                      width: 1.5,
                                                                      color: HexColor(
                                                                        '#0D86BF',
                                                                      ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                30,
                                                                            bottom:
                                                                                3,
                                                                            top:
                                                                                4),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          size:
                                                                              10,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 15,
                                                                              right: 15,
                                                                              bottom: 13),
                                                                          child:
                                                                              Text(
                                                                            "Ratlam",
                                                                            style: TextStyle(
                                                                                color: HexColor("#FFFFFF"),
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    width: 1.5,
                                                                    color: HexColor(
                                                                      '#0D86BF',
                                                                    ))),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 15),
                                                              child: Text(
                                                                "Ratlam",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  controller.forHoshangabad
                                                      .value = true;
                                                },
                                                child:
                                                    controller.forHoshangabad
                                                                .value !=
                                                            false
                                                        ? InkWell(
                                                            onTap: () {
                                                              controller
                                                                  .forHoshangabad
                                                                  .value = false;
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: HexColor("#0D86BF"),
                                                                  border: Border.all(
                                                                      width: 1.5,
                                                                      color: HexColor(
                                                                        '#0D86BF',
                                                                      ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                30,
                                                                            bottom:
                                                                                3,
                                                                            top:
                                                                                4),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          size:
                                                                              10,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 15,
                                                                              right: 15,
                                                                              bottom: 13),
                                                                          child:
                                                                              Text(
                                                                            "Hoshangabad",
                                                                            style: TextStyle(
                                                                                color: HexColor("#FFFFFF"),
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    width: 1.5,
                                                                    color: HexColor(
                                                                      '#0D86BF',
                                                                    ))),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 15),
                                                              child: Text(
                                                                "Hoshangabad",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  controller.forDewas.value =
                                                      true;
                                                },
                                                child:
                                                    controller.forDewas.value !=
                                                            false
                                                        ? InkWell(
                                                            onTap: () {
                                                              controller
                                                                      .forDewas
                                                                      .value =
                                                                  false;
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: HexColor("#0D86BF"),
                                                                  border: Border.all(
                                                                      width: 1.5,
                                                                      color: HexColor(
                                                                        '#0D86BF',
                                                                      ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                30,
                                                                            bottom:
                                                                                3,
                                                                            top:
                                                                                4),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          size:
                                                                              10,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 15,
                                                                              right: 15,
                                                                              bottom: 13),
                                                                          child:
                                                                              Text(
                                                                            "Dewas",
                                                                            style: TextStyle(
                                                                                color: HexColor("#FFFFFF"),
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    width: 1.5,
                                                                    color: HexColor(
                                                                      '#0D86BF',
                                                                    ))),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 15),
                                                              child: Text(
                                                                "Dewas",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  controller.forItarshi.value =
                                                      true;
                                                },
                                                child:
                                                    controller.forItarshi
                                                                .value !=
                                                            false
                                                        ? InkWell(
                                                            onTap: () {
                                                              controller
                                                                  .forItarshi
                                                                  .value = false;
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: HexColor("#0D86BF"),
                                                                  border: Border.all(
                                                                      width: 1.5,
                                                                      color: HexColor(
                                                                        '#0D86BF',
                                                                      ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                30,
                                                                            bottom:
                                                                                3,
                                                                            top:
                                                                                4),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          size:
                                                                              10,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 15,
                                                                              right: 15,
                                                                              bottom: 13),
                                                                          child:
                                                                              Text(
                                                                            "Itarshi",
                                                                            style: TextStyle(
                                                                                color: HexColor("#FFFFFF"),
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    width: 1.5,
                                                                    color: HexColor(
                                                                      '#0D86BF',
                                                                    ))),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 15),
                                                              child: Text(
                                                                "Itarshi",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  controller.forMandsaur.value =
                                                      true;
                                                },
                                                child:
                                                    controller.forMandsaur
                                                                .value !=
                                                            false
                                                        ? InkWell(
                                                            onTap: () {
                                                              controller
                                                                  .forMandsaur
                                                                  .value = false;
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: HexColor("#0D86BF"),
                                                                  border: Border.all(
                                                                      width: 1.5,
                                                                      color: HexColor(
                                                                        '#0D86BF',
                                                                      ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                30,
                                                                            bottom:
                                                                                3,
                                                                            top:
                                                                                4),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          size:
                                                                              10,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 15,
                                                                              right: 15,
                                                                              bottom: 13),
                                                                          child:
                                                                              Text(
                                                                            "Mandsaur",
                                                                            style: TextStyle(
                                                                                color: HexColor("#FFFFFF"),
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    width: 1.5,
                                                                    color: HexColor(
                                                                      '#0D86BF',
                                                                    ))),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 15),
                                                              child: Text(
                                                                "Mandsaur",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Container(
                                              height: 50,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)),
                                                      backgroundColor:
                                                          HexColor("#0D86BF")),
                                                  onPressed: () {
                                                    controller.showPlaces
                                                        .value = true;
                                                    Get.back();
                                                  },
                                                  child: Text(
                                                    "Done",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18),
                                                  ))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                          },
                        );
                      },
                      child: Text(
                        "Add Places for Ad Run",
                        style: TextStyle(
                            color: HexColor("#000000"),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_up,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 55,
                width: double.maxFinite,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      color: Colors.blue,
                      child: const Text(
                        "Publish",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )));
  }
}
