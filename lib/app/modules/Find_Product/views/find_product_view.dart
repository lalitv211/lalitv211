import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:morvi/app/routes/app_pages.dart';

import '../controllers/find_product_controller.dart';

class FindProductView extends GetView<FindProductController> {
  const FindProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#0D86BF"),
          title: const Text(
            'Products',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/GreyBackground.png"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
              child: Obx(
                    () => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                      child:controller.forSearch.value != false
                          ? Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all()),
                        child: Flexible(
                          child: Row(
                            children: [
                              Flexible(
                                child: TextFormField(
                                  maxLines: 1

                                  ,decoration: InputDecoration(
                                    hintText: 'Search.....',

                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none)),
                                ),
                              ),
                              IconButton(onPressed: (){
                                controller.forSearch.value=false;
                              }, icon: Icon(Icons.cancel_rounded,color: HexColor("#0D86BF"),))
                            ],
                          ),
                        ),
                      )
                          : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "List of Products",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          IconButton(
                              onPressed: () {
                                controller.forSearch.value=true;

                              }, icon: Icon(Icons.search_rounded)),
                        ],
                      ),
                    ),
                    controller.showPlaces.value != false
                        ? Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "In Places -",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "Indore, Bhopal,",
                                style: TextStyle(
                                    color: HexColor("#076C9C"),
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "+2 More",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    controller.showPlaces.value = false;
                                  },
                                  child: Text(
                                    "X Clear",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w600,
                                        color: HexColor("#CD3B32")),
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                        : Container(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 1.3,
                        child: GridView.builder(
                          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                          scrollDirection: Axis.vertical,
                          itemCount: 20,
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.6,
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () {
                                Get.toNamed(Routes.FIND_PRODUCTS_DETAILS);
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Image.asset(
                                        "assets/images/Rectangle 33(2).png"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "DSLR",
                                      style: TextStyle(
                                          color: HexColor("#076C9C"),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "CAMERA",
                                      style: TextStyle(
                                          color: HexColor("#076C9C"),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Modal:",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              "IVR700",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Brand:",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              "Sony",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Good Condition"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Demand:",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: HexColor("#0D86BF")),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "20000 Rs.",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: HexColor("#0D86BF")),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),


                    Divider(
                      thickness: 1,
                      color: HexColor("#C0C0C0"),
                    ),

                  ],
                ),
              )),
        ),

    bottomNavigationBar:   Row(
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
                                      "Filter by Places",
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
                                      style:
                                      ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),

                                          backgroundColor:
                                          HexColor(
                                              "#0D86BF")),
                                      onPressed: () {
                                        controller.showPlaces.value=true;
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
            "Filter by Places",
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
    );


  }
}
