import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:morvi/app/routes/app_pages.dart';

import '../controllers/profile_settings_business_controller.dart';

class ProfileSettingsBusinessView
    extends GetView<ProfileSettingsBusinessController> {
  const ProfileSettingsBusinessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {
          Get.toNamed('home');
        }, icon:Icon(Icons.arrow_back),),
        //  leading: Image.asset('assets/images/Vector(18).png',height: 10,),
          backgroundColor: HexColor("#0D86BF"),
          centerTitle: true,
          title: Text(
            "Profile Settings",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ),
        body: Obx(
              () => Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/GreyBackground.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: HexColor("#076C9C"),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Faissz",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          backgroundColor: HexColor("#0D86BF")),
                      onPressed: () {
                       },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Edit Photo",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.PROFILE_SETTINGS);
                      },
                      child: Text("General",
                          style: TextStyle(
                              color: HexColor("#A3A1A1"),
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Business",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: HexColor("#D8E1E5"),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Business Name",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Akriti Studio",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                  color: HexColor("#D8E1E5"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "About Business",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "(Optional)",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                controller.isEditAbout.value != false
                    ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: HexColor("#FFFFFF")),
                    child: TextField(
                      autofocus: true,
                      maxLines: 5,
                      decoration: InputDecoration(
                          hintText:
                          "Lorem ipsum is a dummy text without any sense. It is a sequence of Latin words that, as they are positioned, do not form sentences with a complete sense, but give life to a test text useful to fill spaces.",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10)),
                    ),
                  ),
                )
                    : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                        color: HexColor("#EAEAEA"),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            "Lorem ipsum is a dummy text without any sense. It is a sequence of Latin words that, as they are positioned, do not form sentences with a complete sense, but give life to a test text useful to fill spaces.",
                          ),
                        )),
                  ),
                ),
                controller.isEditAbout.value != false
                    ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(2)),
                              backgroundColor: HexColor("#9A9D9E")),
                          onPressed: () {
                            controller.isEditAbout.value = false;
                          },
                          child: Text(
                            "Cancel",
                            style:
                            TextStyle(fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(2)),
                              backgroundColor: HexColor("#0D86BF")),
                          onPressed: () {
                            controller.isEditAbout.value = false;
                          },
                          child: Text(
                            "Save",
                            style:
                            TextStyle(fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                )
                    : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(2)),
                              backgroundColor: HexColor("#0D86BF")),
                          onPressed: () {
                            controller.isEditAbout.value = true;
                          },
                          child: Text("Edit"))
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: HexColor("#D8E1E5"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Business Address",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                controller.isEditAddress.value != false
                    ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: HexColor("#FFFFFF")),
                    child: TextField(
                      autofocus: true,
                      maxLines: 5,
                      decoration: InputDecoration(
                          hintText:
                          "Test Apartment, Block A, Industry House\nIndore, 452001\nMadhya Pradesh\nIndia",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10)),
                    ),
                  ),
                )
                    : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: HexColor("#EAEAEA"),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          "Test Apartment, Block A, Industry House\nIndore, 452001\nMadhya Pradesh\nIndia",
                        ),
                      ),
                    ),
                  ),
                ),
                controller.isEditAddress.value != false
                    ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(2)),
                              backgroundColor: HexColor("#9A9D9E")),
                          onPressed: () {
                            controller.isEditAddress.value = false;
                          },
                          child: Text(
                            "Cancel",
                            style:
                            TextStyle(fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(2)),
                              backgroundColor: HexColor("#0D86BF")),
                          onPressed: () {
                            controller.isEditAddress.value = false;
                          },
                          child: Text(
                            "Save",
                            style:
                            TextStyle(fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                )
                    : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(2)),
                              backgroundColor: HexColor("#0D86BF")),
                          onPressed: () {
                            controller.isEditAddress.value = true;
                          },
                          child: Text("Edit"))
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: HexColor("#D8E1E5"),
                ),
              ],
            ),
          ),
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(Routes.HOME);
              },
              child: Image.asset(
                "assets/images/Group 182(1).png",
                height: 60,
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.MY_PROFESSIONAL);
              },
              child: Image.asset(
                "assets/images/Group 183(1).png",
                height: 60,
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.PROFILE_SETTINGS);
              },
              child: Image.asset(
                "assets/images/Group 184(1).png",
                height: 60,
              ),
            ),
            Image.asset(
              "assets/images/Group 185.png",
              height: 60,
            )
          ],
        ),
      ),


    );
  }
}
