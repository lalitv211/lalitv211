import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/enquiries_details_controller.dart';

class EnquiriesDetailsView extends GetView<EnquiriesDetailsController> {
  const EnquiriesDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#0D86BF"),
          title: const Text(
            'Enquiry Details',
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Ellipse.png",
                      height: 75,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Ankit Mishra",
                          style: TextStyle(
                              color: HexColor("#076C9C"),
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        Text("")
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.mail,
                              size: 18,
                              color: HexColor("#076C9C"),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "ajay@email.com",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.place,
                              size: 18,
                              color: HexColor("#076C9C"),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Indore",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 18,
                              color: HexColor("#076C9C"),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "+91 90909 90909",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            // Icon(
                            //   Icons.rotate_90_degrees_cw_rounded,
                            //   size: 18,
                            //   color: HexColor("#076C9C"),
                            // ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Divider(
                color: HexColor("#D8E1E5"),
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Flexible(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 6,
                            decoration:
                                BoxDecoration(color: HexColor("#076C9C")),
                            child: Center(
                              child: Text(
                                "Date",
                                style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 6,
                              decoration:
                                  BoxDecoration(color: HexColor("#E6E6E6")),
                              child: Center(
                                  child: Text(
                                "22/10/2023",
                                style: TextStyle(
                                    fontSize: 8.5, fontWeight: FontWeight.w400),
                              )))
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
                            width: MediaQuery.of(context).size.width / 7,
                            decoration:
                                BoxDecoration(color: HexColor("#076C9C")),
                            child: Center(
                              child: Text(
                                "Program",
                                style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 7,
                              decoration:
                                  BoxDecoration(color: HexColor("#E6E6E6")),
                              child: Center(
                                  child: Text(
                                "Pre-Wedding Shoot",
                                style: TextStyle(
                                    fontSize: 8.5, fontWeight: FontWeight.w400),
                              )))
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
                            width: MediaQuery.of(context).size.width / 6,
                            decoration:
                                BoxDecoration(color: HexColor("#076C9C")),
                            child: Center(
                              child: Text(
                                "Photo/Video",
                                style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 6,
                            decoration:
                                BoxDecoration(color: HexColor("#E6E6E6")),
                            child: Center(
                              child: Center(
                                child: Text(
                                  "Photo",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: HexColor("#076C9C"),
                                      fontSize: 8.5,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
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
                            width: MediaQuery.of(context).size.width / 6.7,
                            decoration:
                                BoxDecoration(color: HexColor("#076C9C")),
                            child: Center(
                              child: Text(
                                "Time",
                                style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 6.7,
                              decoration:
                                  BoxDecoration(color: HexColor("#E6E6E6")),
                              child: Center(
                                  child: Text(
                                "10: 00 AM",
                                style: TextStyle(
                                    fontSize: 8.5, fontWeight: FontWeight.w400),
                              )))
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
                            width: MediaQuery.of(context).size.width / 7,
                            decoration:
                                BoxDecoration(color: HexColor("#076C9C")),
                            child: Center(
                              child: Text(
                                "Address",
                                style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 8.5,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 7,
                              decoration:
                                  BoxDecoration(color: HexColor("#E6E6E6")),
                              child: Center(
                                  child: Text(
                                "Indore",
                                style: TextStyle(
                                    fontSize: 8.5, fontWeight: FontWeight.w400),
                              )))
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
                            width: MediaQuery.of(context).size.width / 6.5,
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
                              width: MediaQuery.of(context).size.width / 6.5,
                              decoration:
                                  BoxDecoration(color: HexColor("#E6E6E6")),
                              child: Center(
                                  child: Text(
                                "Need Photo grapher",
                                style: TextStyle(
                                    fontSize: 8.5, fontWeight: FontWeight.w400),
                              )))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Places:",
                      style: TextStyle(
                          color: HexColor("#076C9C"),
                          fontSize: 11.5,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Indore",
                      style: TextStyle(
                          color: HexColor("#076C9C"),
                          fontSize: 11.5,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
