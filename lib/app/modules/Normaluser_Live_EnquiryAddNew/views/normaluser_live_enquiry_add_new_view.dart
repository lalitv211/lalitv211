import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../routes/app_pages.dart';
import '../controllers/normaluser_live_enquiry_add_new_controller.dart';

class NormaluserLiveEnquiryAddNewView
    extends GetView<NormaluserLiveEnquiryAddNewController> {
  const NormaluserLiveEnquiryAddNewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        title: const Text(
          'Live Enquiry',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/GreyBackground.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "1 Enquiry",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#076C9C"),
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: HexColor("#FFFFFF"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        const Text(
                          "Add New",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Divider(
                thickness: 2,
                color: HexColor("#D8E1E5"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Flexible(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#076C9C")),
                                  child: Center(
                                    child: Text(
                                      "Date",
                                      style: TextStyle(
                                          color: HexColor("#FFFFFF"),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  decoration:
                                      BoxDecoration(color: HexColor("#FFFFFF")),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            hintText: "Enter Date",
                                            contentPadding:
                                                EdgeInsets.only(left: 5),
                                            hintStyle: TextStyle(fontSize: 10),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#076C9C")),
                                  child: Center(
                                    child: Text(
                                      "Program",
                                      style: TextStyle(
                                          color: HexColor("#FFFFFF"),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#FFFFFF")),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: "Add Program Name",
                                        contentPadding:
                                            EdgeInsets.only(left: 5),
                                        hintStyle: TextStyle(fontSize: 10),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#076C9C")),
                                  child: Center(
                                    child: Text(
                                      "Upload Photo/Video",
                                      style: TextStyle(
                                          color: HexColor("#FFFFFF"),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    decoration: BoxDecoration(
                                        color: HexColor("#FFFFFF")),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero),
                                      onPressed: () {},
                                      child: Column(
                                        children: [
                                          const Text(''),
                                          Text(
                                            "Upload",
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: HexColor("#076C9C"),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const Text("")
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#076C9C")),
                                  child: Center(
                                    child: Text(
                                      "Time",
                                      style: TextStyle(
                                          color: HexColor("#FFFFFF"),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#FFFFFF")),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: "Enter Program Time",
                                        contentPadding:
                                            EdgeInsets.only(left: 5),
                                        hintStyle: TextStyle(fontSize: 10),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#076C9C")),
                                  child: Center(
                                    child: Text(
                                      "Address",
                                      style: TextStyle(
                                          color: HexColor("#FFFFFF"),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#FFFFFF")),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: "Enter Program Address",
                                        contentPadding:
                                            EdgeInsets.only(left: 5),
                                        hintStyle: TextStyle(fontSize: 10),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#076C9C")),
                                  child: Center(
                                    child: Text(
                                      "Message",
                                      style: TextStyle(
                                          color: HexColor("#FFFFFF"),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration:
                                      BoxDecoration(color: HexColor("#FFFFFF")),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: "Enter Message",
                                        contentPadding:
                                            EdgeInsets.only(left: 5),
                                        hintStyle: TextStyle(fontSize: 10),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration:
                                      BoxDecoration(color: HexColor("#076C9C")),
                                  child: Center(
                                    child: Text(
                                      "Action",
                                      style: TextStyle(
                                          color: HexColor("#FFFFFF"),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration:
                                      BoxDecoration(color: HexColor("#FFFFFF")),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      "assets/images/Group 250.png",
                                      height: 35,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor("#076C9C")),
                        onPressed: () {
                          Get.toNamed(Routes.CHOOSE_PLACES_PAGE);
                        },
                        child: const Text(
                          "Choose Places",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor("#076C9C")),
                        onPressed: () {
                          Get.toNamed(Routes.CHOOSE_PLACES_PAGE);
                        },
                        child: const Text(
                          "Add More",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 43,
              ),
              Divider(
                thickness: 2,
                color: HexColor("#D8E1E5"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 2,
              ),
             ],
          ),
        ),
      ),
      bottomNavigationBar:           InkWell(
        onTap: () {
         },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
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
                      "DONE",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 1.4,
                top: 15,
                child: Image.asset("assets/images/Vector(15).png"),height: 45,)
            ],
          ),
        ),
      ),

    );
  }
}
