import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/normaluser_profile_settings_controller.dart';

class NormaluserProfileSettingsView
    extends GetView<NormaluserProfileSettingsController> {
  const NormaluserProfileSettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.toNamed('/normal-user-home');
          },
          icon: Icon(Icons.arrow_back),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: HexColor("#0D86BF"),
        centerTitle: true,
        title: Text(
          "Profile Settings",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        ),
      ),
      body: Obx(
            () => Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/GreyBackground.png"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
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
                        showModalBottomSheet<void>(
                          // context and builder are
                          // required properties in this widget
                          context: context,
                          builder: (BuildContext context) {
                            // we set up a container inside which
                            // we create center column and display text

                            // Returning SizedBox instead of a Container
                            return SizedBox(
                              height: MediaQuery.of(context).size.height / 2.7,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                            HexColor("#CD3B32")),
                                        onPressed: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          child: Text(
                                            "Remove Photo",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                            HexColor("#E28801")),
                                        onPressed: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          child: Text(
                                            "Change Photo",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                            HexColor("#9A9D9E")),
                                        onPressed: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          child: Text(
                                            "Change Photo",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Edit Photo",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      )),
                ),
                Center(child: Text("Genral")),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 2, horizontal: 3),
                 ),
                Container(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 2,
                        color: HexColor("#D8E1E5"),
                      ),
                      controller.isEdit.value != false
                          ? Container(
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(
                              horizontal: 20),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Name",
                                style: TextStyle(
                                    fontWeight:
                                    FontWeight.w700),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                color: Colors.white,
                                height: 30,
                                child: Center(
                                  child: TextFormField(
                                    textAlignVertical:
                                    TextAlignVertical
                                        .center,

                                    autofocus: true,
                                    //controller: controller.nameController,
                                    //maxLength: 20,
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius
                                                .zero),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius
                                                .zero)),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  2)),
                                          backgroundColor:
                                          HexColor(
                                              "#9A9D9E")),
                                      onPressed: () {
                                        controller.isEdit
                                            .value =
                                        false;
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .w600),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  2)),
                                          backgroundColor:
                                          HexColor(
                                              "#0D86BF")),
                                      onPressed: () {
                                        controller.isEdit
                                            .value =
                                        false;
                                      },
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .w600),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                          : Padding(
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Flexible(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    Text(
                                      "Name",
                                      softWrap: false,
                                      style: TextStyle(
                                          overflow:
                                          TextOverflow
                                              .ellipsis,
                                          fontWeight:
                                          FontWeight
                                              .w700),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    // Text(
                                    //   controller.nameController.text,
                                    //   style: TextStyle(
                                    //       fontWeight: FontWeight.w400),
                                    // )
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              2)),
                                      backgroundColor:
                                      HexColor(
                                          "#0D86BF")),
                                  onPressed: () {
                                    controller.isEdit
                                        .value = true;
                                  },
                                  child: Padding(
                                    padding:
                                    const EdgeInsets
                                        .symmetric(
                                        horizontal:
                                        15),
                                    child: Text("Edit"),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: HexColor("#D8E1E5"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              color: HexColor("#868686"),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text("user@email.com",
                            style: TextStyle(
                                color: HexColor("#868686"),
                                fontWeight: FontWeight.w400)),
                      ),
                      Divider(
                        thickness: 2,
                        color: HexColor("#D8E1E5"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text(
                          "Phone",
                          style: TextStyle(
                              color: HexColor("#868686"),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text("+91 90000 00000",
                            style: TextStyle(
                                color: HexColor("#868686"),
                                fontWeight: FontWeight.w400)),
                      ),
                      Divider(
                        thickness: 2,
                        color: HexColor("#D8E1E5"),
                      ),
                      controller.isPlaseEdit.value != false
                          ? Padding(
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Container(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Place",
                                style: TextStyle(
                                    fontWeight:
                                    FontWeight.w700),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                  width: MediaQuery.of(
                                      context)
                                      .size
                                      .width,
                                  decoration:
                                  BoxDecoration(
                                      color: Colors
                                          .white,
                                      border: Border
                                          .all()),
                                  height: 30,
                                  child:
                                  DropdownButtonHideUnderline(
                                    child: DropdownButton<
                                        String>(
                                      hint: Padding(
                                        padding: const EdgeInsets
                                            .symmetric(
                                            horizontal:
                                            10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Bhopal",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ),
                                      items: <String>[
                                        'Indore',
                                        'Bhopal',
                                        'Jabalpur',
                                        'Ratlam',
                                        'Hoshangabad',
                                        'Dewas',
                                        'Itarsi',
                                        'Mandsaur'
                                      ].map(
                                              (String value) {
                                            return DropdownMenuItem<
                                                String>(
                                              value: value,
                                              child:
                                              Text(value),
                                            );
                                          }).toList(),
                                      onChanged: (_) {},
                                    ),
                                  )),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  2)),
                                          backgroundColor:
                                          HexColor(
                                              "#9A9D9E")),
                                      onPressed: () {
                                        controller
                                            .isPlaseEdit
                                            .value = false;
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .w600),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  2)),
                                          backgroundColor:
                                          HexColor(
                                              "#0D86BF")),
                                      onPressed: () {
                                        controller
                                            .isPlaseEdit
                                            .value = false;
                                      },
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .w600),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                          : Padding(
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                              children: [
                                Text(
                                  "Place",
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight
                                          .w700),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Bhopal",
                                  style: TextStyle(
                                      fontWeight:
                                      FontWeight
                                          .w400),
                                )
                              ],
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            2)),
                                    backgroundColor:
                                    HexColor(
                                        "#E28801")),
                                onPressed: () {
                                  controller.isPlaseEdit
                                      .value = true;
                                },
                                child: Padding(
                                  padding:
                                  const EdgeInsets
                                      .symmetric(
                                      horizontal: 15),
                                  child: Text("Edit"),
                                ))
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: HexColor("#D8E1E5"),
                      ),
                      controller.isPasswordEdit.value != false
                          ? Padding(
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Container(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Change Password",
                                style: TextStyle(
                                    fontWeight:
                                    FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("OLD PASSWORD"),
                              Container(
                                color: Colors.white,
                                height: 30,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder:
                                      OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius
                                              .zero),
                                      focusedBorder:
                                      OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius
                                              .zero)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("NEW PASSWORD"),
                              Container(
                                color: Colors.white,
                                height: 30,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder:
                                      OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius
                                              .zero),
                                      focusedBorder:
                                      OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius
                                              .zero)),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  2)),
                                          backgroundColor:
                                          HexColor(
                                              "#9A9D9E")),
                                      onPressed: () {
                                        controller
                                            .isPasswordEdit
                                            .value = false;
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .w600),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  2)),
                                          backgroundColor:
                                          HexColor(
                                              "#0D86BF")),
                                      onPressed: () {
                                        controller
                                            .isPasswordEdit
                                            .value = false;
                                      },
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .w600),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                          : Padding(
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Flexible(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    Text(
                                      "Change Password",
                                      style: TextStyle(
                                          overflow:
                                          TextOverflow
                                              .ellipsis,
                                          fontWeight:
                                          FontWeight
                                              .w700),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "XXXXXXXXXXX",
                                      style: TextStyle(
                                          overflow:
                                          TextOverflow
                                              .ellipsis,
                                          fontWeight:
                                          FontWeight
                                              .w400),
                                    )
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              2)),
                                      backgroundColor:
                                      HexColor(
                                          "#E28801")),
                                  onPressed: () {
                                    controller
                                        .isPasswordEdit
                                        .value = true;
                                  },
                                  child: Padding(
                                    padding:
                                    const EdgeInsets
                                        .symmetric(
                                        horizontal:
                                        15),
                                    child: Text("Edit"),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: HexColor("#D8E1E5"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text(
                          "Facebook Page",
                          style: TextStyle(
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text(
                            "https://www.facebook.com/user",
                            style: TextStyle(
                                fontWeight: FontWeight.w400)),
                      ),
                      Divider(
                        thickness: 2,
                        color: HexColor("#D8E1E5"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text(
                          "Youtube",
                          style: TextStyle(
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text(
                            "https://www.youtube.com/user",
                            style: TextStyle(
                                fontWeight: FontWeight.w400)),
                      ),
                      Divider(
                        thickness: 2,
                        color: HexColor("#D8E1E5"),
                      ),
                    ],
                  ),
                ),
               ],
            ),
          ),
        ),
      ),
    );
  }
}
