import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/professional_view_profile_controller.dart';

class ProfessionalViewProfileView
    extends GetView<ProfessionalViewProfileController> {
  const ProfessionalViewProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        title: const Text(
          'Professional View',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/GreyBackground.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: Image.asset("assets/images/Ellipse.png"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ajay Photo Studio",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: HexColor("#076C9C"),
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Ajay Gupta (Owner)",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
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
                height: MediaQuery.of(context).size.height / 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Find my Work",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: HexColor("#076C9C"),
                      radius: 25,
                      child: Image.asset("assets/images/Vector(12).png",height: 25,),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: HexColor("#076C9C"),
                      radius: 25,
                      child: Image.asset("assets/images/insta 1(1).png",height: 28,),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: HexColor("#076C9C"),
                      radius: 25,
                      child: Image.asset("assets/images/tweet 1.png",height: 28,),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: HexColor("#076C9C"),
                      radius: 25,
                      child: Image.asset("assets/images/Vector(13).png",height: 20,),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Professional In",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Ellipse 10.png",
                      height: 80,
                    ),
                    Text(
                      "Photo Studio",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: HexColor("#E6E6E6"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Ellipse 10.png",
                      height: 80,
                    ),
                    Text(
                      "Freelance Photography",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: HexColor("#E6E6E6"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Ellipse 10.png",
                      height: 80,
                    ),
                    Text(
                      "Camera Spare Parts",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Focus",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Image.asset("assets/images/Rectangle 32.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 14),
                child: Text("Category 1"),
              ),
              Divider(
                thickness: 1,
                color: HexColor("#E6E6E6"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Category 2"),
              ),
              Divider(
                thickness: 1,
                color: HexColor("#E6E6E6"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Category 3"),
              ),
              Divider(
                thickness: 1,
                color: HexColor("#E6E6E6"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  "Photos & Videos",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
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
                                      'assets/images/Rectangle 32.png')));
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        backgroundColor: HexColor("#0D86BF")),
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  "Products on Sell",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height/2.4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/Rectangle 33.png",
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "DSLR CAMERA",
                                  style: TextStyle(
                                      color: HexColor("#076C9C"),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Model:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text("IVR700",
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.w700))
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Brand:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text("Sony",
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.w700))
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Price: 20000 Rs.",
                                  style: TextStyle(
                                      color: HexColor('#0D86BF'),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Good Condition",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text("Places"),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Indore, Dewas, Bhopal,",
                                  style: TextStyle(
                                      color: HexColor("#0D86BF"),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Jabalpur, Itarsi, Hoshangabad",
                                  style: TextStyle(
                                      color: HexColor("#0D86BF"),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 5),
                          child: Column(
                            children: [
                              Image.asset("assets/images/Rectangle 33(1).png"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "HQ CAMERA",
                                style: TextStyle(
                                    color: HexColor("#076C9C"),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Model:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text("IVR700",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700))
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Brand:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text("Sony",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Price: 20000 Rs.",
                                style: TextStyle(
                                    color: HexColor('#0D86BF'),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Good Condition",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Places"),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                "Indore, Dewas, Bhopal,",
                                style: TextStyle(
                                    color: HexColor("#0D86BF"),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                "Jabalpur, Itarsi, Hoshangabad",
                                style: TextStyle(
                                    color: HexColor("#0D86BF"),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/Rectangle 33.png",
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "DSLR CAMERA",
                                  style: TextStyle(
                                      color: HexColor("#076C9C"),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Model:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text("IVR700",
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.w700))
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Brand:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text("Sony",
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.w700))
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Price: 20000 Rs.",
                                  style: TextStyle(
                                      color: HexColor('#0D86BF'),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Good Condition",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text("Places"),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Indore, Dewas, Bhopal,",
                                  style: TextStyle(
                                      color: HexColor("#0D86BF"),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Jabalpur, Itarsi, Hoshangabad",
                                  style: TextStyle(
                                      color: HexColor("#0D86BF"),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
