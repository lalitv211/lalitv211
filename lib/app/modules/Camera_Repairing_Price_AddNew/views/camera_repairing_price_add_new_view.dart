import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../routes/app_pages.dart';
import '../controllers/camera_repairing_price_add_new_controller.dart';

class CameraRepairingPriceAddNewView
    extends GetView<CameraRepairingPriceAddNewController> {
  const CameraRepairingPriceAddNewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        title: Column(
          children: [
            Text(
              'Camera Repairing',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
            Text(
              "Price",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ],
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Camera Repairing\nPrice",
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
                        SizedBox(
                          width: 7,
                        ),
                        Text(
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
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 3.8,
                            decoration:
                                BoxDecoration(color: HexColor("#076C9C")),
                            child: Center(
                              child: Text(
                                "Equipment",
                                style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3.8,
                            height: MediaQuery.of(context).size.height / 7,
                            decoration:
                                BoxDecoration(color: HexColor("#FFFFFF")),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter Equipment Name Here...",
                                      contentPadding: EdgeInsets.only(left: 5),
                                      hintStyle: TextStyle(fontSize: 8.5),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.cancel_presentation_sharp,
                                      color: HexColor("#E28801"),
                                    ))
                              ],
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
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 4.5,
                            decoration:
                                BoxDecoration(color: HexColor("#076C9C")),
                            child: Center(
                              child: Text(
                                "Brand",
                                style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 4.5,
                            decoration:
                                BoxDecoration(color: HexColor("#FFFFFF")),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Brand Name",
                                  contentPadding: EdgeInsets.only(left: 5),
                                  hintStyle: TextStyle(fontSize: 8.5),
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
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 4.5,
                            decoration:
                                BoxDecoration(color: HexColor("#076C9C")),
                            child: Center(
                              child: Text(
                                "Service Charge",
                                style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 4.5,
                            decoration:
                                BoxDecoration(color: HexColor("#FFFFFF")),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Service Charge",
                                  contentPadding: EdgeInsets.only(left: 5),
                                  hintStyle: TextStyle(fontSize: 8.5),
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
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 4.5,
                            decoration:
                                BoxDecoration(color: HexColor("#076C9C")),
                            child: Center(
                              child: Text(
                                "Message",
                                style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 4.5,
                            decoration:
                                BoxDecoration(color: HexColor("#FFFFFF")),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Message",
                                  contentPadding: EdgeInsets.only(left: 5),
                                  hintStyle: TextStyle(fontSize: 8.5),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor("#076C9C")),
                    onPressed: () {
                      Get.toNamed(Routes.CHOOSE_PLACES_PAGE);
                    },
                    child: Text(
                      "Choose Places",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    )),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor("#0D86BF")),
                        onPressed: () {
                            Get.toNamed(Routes.CAMERA_ANALYZER_CONSULTANCY_FEE);
                        },
                        child: Text(
                          "Done",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
