import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../routes/app_pages.dart';
import '../controllers/normal_user_home_controller.dart';

class NormalUserHomeView extends GetView<NormalUserHomeController> {
  int pageIndex = 0;

  CarouselController carouselController = CarouselController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> imgList = [];

  List<String> imageURL = [
    'assets/img_5.png',
    'assets/img_5.png',
    'assets/img_5.png'
  ];

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  NormalUserHomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/GreyBackground.png'))),
            child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: HexColor("#EBEBEB")),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#FFFFFF"),
                          radius: 33,
                          child: Icon(
                            Icons.person,
                            size: 35,
                            color: HexColor("#D0D0D0"),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "User Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 34),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.circle_sharp,
                            size: 5,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.NORMALUSER_PROFILE_SETTINGS);
                            },
                            child: const Text(
                              "My Profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.NORMAL_USER_LIVE_ENQUIRY);
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.circle_sharp,
                              size: 5,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Live Enquiry",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle_sharp,
                            size: 5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.SEARCH_PROFESSIONALS);
                            },
                            child: Text(
                              "Search Professional",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle_sharp,
                            size: 5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.FIND_PRODUCT);
                            },
                            child: Text(
                              "Find Product",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.circle_sharp,
                            size: 5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Refer App",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle_sharp,
                            size: 5,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.ABOUT_MORVI);
                            },
                            child: const Text(
                              "About Morvi",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle_sharp,
                            size: 5,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.TERMS_AND_CONDITOPNS_PAGE);
                            },
                            child: const Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle_sharp,
                            size: 5,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.DATA_POLICY_PAGE);
                            },
                            child: const Text(
                              "Data Policy",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.circle_sharp,
                            size: 5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Log out",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      const Text(
                        "Follow us on",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: HexColor("#5E27FB"),
                              radius: 25,
                              child: Image.asset("assets/images/Vector(12).png",height: 25,),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            CircleAvatar(
                              backgroundColor: HexColor('#9A2572'),
                              radius: 25,
                              child: Image.asset("assets/images/insta 1(1).png",height: 28,),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            CircleAvatar(
                              backgroundColor: HexColor("#0CAAF4"),
                              radius: 25,
                              child: Image.asset("assets/images/tweet 1.png",height: 28,),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            CircleAvatar(
                              backgroundColor: HexColor("#CE3213"),
                              radius: 25,
                              child: Image.asset("assets/images/Vector(13).png",height: 20,),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Row(
                          children: [
                            const Text(
                              "Copyright 2022 |",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              " Morvi",
                              style: TextStyle(
                                  color: HexColor("#076C9C"),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: HexColor("#0D86BF"),
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Row(
            children: [
              InkWell(
                onTap: () {
                  if (scaffoldKey.currentState!.isDrawerOpen) {
                    scaffoldKey.currentState!.closeDrawer();
                    //close drawer, if drawer is open
                  } else {
                    scaffoldKey.currentState!.openDrawer();
                    //open drawer, if drawer is closed
                  }
                },
                child: Container(
                  child: Image.asset(
                    "assets/images/Group 21.png",
                    height: 33,
                  ),
                ),
              ),
              SizedBox(
                width: 130,
              ),
              Text(
                "Morvi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.blue.shade50,
              image: const DecorationImage(
                  image: AssetImage('assets/old_images/img_2.png'),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Photographer in Focus",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SEARCH_PROFESSIONALS);

                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/Rectangle 29(1).png",
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(2)),
                        child: Center(
                            child: Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child: CarouselSlider(
                    carouselController: carouselController,
                    options: CarouselOptions(
                        onScrolled: (value) {
                          //  controller.currentIndex.value = double.parse(value.toString());
                        },
                        height: 400.0,
                        autoPlay: false),
                    items: [1].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Stack(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Center(
                                      child: Image.asset(
                                          'assets/old_images/img_3.png'))),
                              Positioned(
                                  top: MediaQuery.of(context).size.height / 6,
                                  left: 105,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: HexColor("#0D86BF"),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 5),
                                      child: Text(
                                        "Business Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: HexColor("#FFFFFF")),
                                      ),
                                    ),
                                  ))
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                Obx(
                  () => DotsIndicator(
                    dotsCount: 5,
                    position: controller.currentIndex.value,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 28,
                    ),
                    Text(
                      "Showcase",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child: CarouselSlider(
                    carouselController: carouselController,
                    options:
                        CarouselOptions(height: 400.0, viewportFraction: 0.9),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Center(
                                  child: Image.asset(
                                      'assets/old_images/img_3.png')));
                        },
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                DotsIndicator(
                  dotsCount: 5,
                  position: 0,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sell for you",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.FIND_PRODUCT);
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/Rectangle 29(1).png",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(2)),
                          child: Center(
                              child: Text(
                            "View all",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.PRODUCT_DETAILS);
                  },
                  child: SizedBox(
                    height: 300,
                    child: CarouselSlider(
                      carouselController: carouselController,
                      options:
                          CarouselOptions(height: 300, viewportFraction: 0.6),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  elevation: 5,
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                          width: 220,
                                          child: Image.asset(
                                            'assets/old_images/img_7.png',
                                            fit: BoxFit.fill,
                                          )),

                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "DSLR SJ CAM",
                                        style: TextStyle(
                                          color: Color(0xff076C9C),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                        ),
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
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                "IVR700",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Brand",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                "Sony",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      //DSLR
                                      // CAMERA
                                      // Modal: IVR700
                                      // Brand Sony
                                      // Good Condition
                                      // Demand: 20000 Rs.
                                      const Text(
                                        "Good Condition",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        "Demand: 20000 Rs.",
                                        style: TextStyle(
                                          color: Color(0xff0D86BF),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ));
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
                DotsIndicator(
                  dotsCount: 5,
                  position: 0,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
