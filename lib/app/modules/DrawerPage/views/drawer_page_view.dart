import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:morvi/app/routes/app_pages.dart';
import '../../MyProfessional/views/my_professional_view.dart';
import '../controllers/drawer_page_controller.dart';

class DrawerPageView extends GetView<DrawerPageController> {
  const DrawerPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/GreyBackground.png'))),
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: HexColor("#EBEBEB")),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#FFFFFF"),
                          child: Icon(
                            Icons.person,
                            size: 35,
                            color: HexColor("#D0D0D0"),
                          ),
                          radius: 33,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "User Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        )
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          onTap: () {},
                          child: Text(
                            "My Profile",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
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
                          onTap: (){
                            Get.to(MyProfessionalView());
                          },
                          child: Text(
                            "My Professional",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
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
                        Text(
                          "Place",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
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
                          onTap: (){
                            Get.toNamed(Routes.SEARCH_PROFESSIONALS);
                          },
                          child: Text(
                            "Search Professionals",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
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
                          },
                          child: Text(
                            "Live Enquiry",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
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
                    SizedBox(
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
                        Text(
                          "My Friend",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        )
                      ],
                    ),
                    SizedBox(
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
                        Text(
                          "Refer App",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        )
                      ],
                    ),
                    SizedBox(
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
                            Get.toNamed(Routes.ABOUT_MORVI);
                          },
                          child: Text(
                            "About Morvi",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
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
                            Get.toNamed(Routes.TERMS_AND_CONDITOPNS_PAGE);
                          },
                          child: Text(
                            "Terms & Conditions",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
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
                            Get.toNamed(Routes.DATA_POLICY_PAGE);
                          },
                          child: Text(
                            "Data Policy",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
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
                        Text(
                          "Log out",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
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
                            child: Image.asset("assets/images/Vector(3).png"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: HexColor('#9A2572'),
                            radius: 25,
                            child: Image.asset("assets/images/insta 1.png"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: HexColor("#0CAAF4"),
                            radius: 25,
                            child: Image.asset("assets/images/twiter.png"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: HexColor("#CE3213"),
                            radius: 25,
                            child: Image.asset("assets/images/Vector(7).png"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Row(
                        children: [
                          Text(
                            "Copyright 2022 |",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " Morvi",
                            style: TextStyle(
                                color: HexColor("#076C9C"),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
