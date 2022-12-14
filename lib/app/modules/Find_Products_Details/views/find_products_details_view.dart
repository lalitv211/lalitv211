import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/find_products_details_controller.dart';

class FindProductsDetailsView extends GetView<FindProductsDetailsController> {
  const FindProductsDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#0D86BF"),
          title: const Text(
            'Products Details',
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ajay Photo Studio",
                            style: TextStyle(
                                color: HexColor("#076C9C"),
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          Text("Ajay Gupta (Owner)")
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
                                Icons.messenger_sharp,
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
                              Icon(
                                Icons.rotate_90_degrees_cw_rounded,
                                size: 18,
                                color: HexColor("#076C9C"),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "7 Year Experienced",
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Modal",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Brand",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Demand",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Condition",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DSLR Camera",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "E5151",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sony",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "20000 INR",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Good",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Description Here...",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      ),
                      Column()
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Image.asset("assets/images/pdf 1.png",height: 30,),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "VIEW BILL",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: HexColor("#076C9C"),
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Photos",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 150,
                    width: double.maxFinite,
                    child: CarouselSlider(
                      //  carouselController: carouselController,
                      options: CarouselOptions(height: 400.0),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Center(
                                    child: Image.asset(
                                        'assets/images/Rectangle 33(2).png')));
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
