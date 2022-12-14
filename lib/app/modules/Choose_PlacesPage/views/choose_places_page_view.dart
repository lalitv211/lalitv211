import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../controllers/choose_places_page_controller.dart';

class ChoosePlacesPageView extends GetView<ChoosePlacesPageController> {
  const ChoosePlacesPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#FFFFFF"),
          elevation: 1,
          title: const Text(
            'Choose Places',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(
                  () => SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              controller.forIndore.value = true;
                            },
                            child: controller.forIndore.value != false
                                ? InkWell(
                              onTap: () {
                                controller.forIndore.value = false;
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
                                  MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30,
                                              bottom: 3,
                                              top: 4),
                                          child: Icon(
                                            Icons.done,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                bottom: 13),
                                            child: Text(
                                              "Indore",
                                              style: TextStyle(
                                                  color:
                                                  HexColor("#FFFFFF"),
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.w500),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Text(
                                  "Indore",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {
                              controller.forBhopal.value = true;
                            },
                            child: controller.forBhopal.value != false
                                ? InkWell(
                              onTap: () {
                                controller.forBhopal.value = false;
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
                                  MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30,
                                              bottom: 3,
                                              top: 4),
                                          child: Icon(
                                            Icons.done,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                bottom: 13),
                                            child: Text(
                                              "Bhopal",
                                              style: TextStyle(
                                                  color:
                                                  HexColor("#FFFFFF"),
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.w500),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Text(
                                  "Bhopal",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {
                              controller.forJabalpur.value = true;
                            },
                            child: controller.forJabalpur.value != false
                                ? InkWell(
                              onTap: () {
                                controller.forJabalpur.value = false;
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
                                  MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30,
                                              bottom: 3,
                                              top: 4),
                                          child: Icon(
                                            Icons.done,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                bottom: 13),
                                            child: Text(
                                              "Jabalpur",
                                              style: TextStyle(
                                                  color:
                                                  HexColor("#FFFFFF"),
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.w500),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Text(
                                  "Jabalpur",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
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
                              controller.forRatlam.value = true;
                            },
                            child: controller.forRatlam.value != false
                                ? InkWell(
                              onTap: () {
                                controller.forRatlam.value = false;
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
                                  MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30,
                                              bottom: 3,
                                              top: 4),
                                          child: Icon(
                                            Icons.done,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                bottom: 13),
                                            child: Text(
                                              "Ratlam",
                                              style: TextStyle(
                                                  color:
                                                  HexColor("#FFFFFF"),
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.w500),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Text(
                                  "Ratlam",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {
                              controller.forHoshangabad.value = true;
                            },
                            child: controller.forHoshangabad.value != false
                                ? InkWell(
                              onTap: () {
                                controller.forHoshangabad.value = false;
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
                                  MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30,
                                              bottom: 3,
                                              top: 4),
                                          child: Icon(
                                            Icons.done,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                bottom: 13),
                                            child: Text(
                                              "Hoshangabad",
                                              style: TextStyle(
                                                  color:
                                                  HexColor("#FFFFFF"),
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.w500),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Text(
                                  "Hoshangabad",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
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
                              controller.forDewas.value = true;
                            },
                            child: controller.forDewas.value != false
                                ? InkWell(
                              onTap: () {
                                controller.forDewas.value = false;
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
                                  MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30,
                                              bottom: 3,
                                              top: 4),
                                          child: Icon(
                                            Icons.done,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                bottom: 13),
                                            child: Text(
                                              "Dewas",
                                              style: TextStyle(
                                                  color:
                                                  HexColor("#FFFFFF"),
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.w500),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Text(
                                  "Dewas",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {
                              controller.forItarshi.value = true;
                            },
                            child: controller.forItarshi.value != false
                                ? InkWell(
                              onTap: () {
                                controller.forItarshi.value = false;
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
                                  MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30,
                                              bottom: 3,
                                              top: 4),
                                          child: Icon(
                                            Icons.done,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                bottom: 13),
                                            child: Text(
                                              "Itarshi",
                                              style: TextStyle(
                                                  color:
                                                  HexColor("#FFFFFF"),
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.w500),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Text(
                                  "Itarshi",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {
                              controller.forMandsaur.value = true;
                            },
                            child: controller.forMandsaur.value != false
                                ? InkWell(
                              onTap: () {
                                controller.forMandsaur.value = false;
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
                                  MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30,
                                              bottom: 3,
                                              top: 4),
                                          child: Icon(
                                            Icons.done,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                bottom: 13),
                                            child: Text(
                                              "Mandsaur",
                                              style: TextStyle(
                                                  color:
                                                  HexColor("#FFFFFF"),
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.w500),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Text(
                                  "Mandsaur",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                  backgroundColor: HexColor("#0D86BF")),
                              onPressed: () {},
                              child: Text(
                                "Done",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ))),
                    )
                  ],
                ),
              ),
            )));
  }
}
