import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morvi/app/routes/app_pages.dart';
import '../controllers/profile_settings_controller.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileSettingsView extends GetView<ProfileSettingsController> {
  ProfileSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.toNamed('home');
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
        () => SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/GreyBackground.png"),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
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
                                      Container(
                                  width: MediaQuery.of(context).size.width/1.5
                                    ,decoration: BoxDecoration(color: HexColor("#CD3B32"),borderRadius: BorderRadius.circular(2)),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
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
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                       width: MediaQuery.of(context).size.width/1.5
                                      ,decoration: BoxDecoration(color: HexColor("#E28801"),borderRadius: BorderRadius.circular(2))
                                        ,child: ElevatedButton(

                                            style: ElevatedButton.styleFrom(
                                              elevation: 0
                                              ,  backgroundColor:
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
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context).size.width/1.5
                                          ,decoration: BoxDecoration(color: HexColor("#9A9D9E"),borderRadius: BorderRadius.circular(2)),

                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0
                                              ,  backgroundColor:
                                                    HexColor("#9A9D9E")),
                                            onPressed: () {},
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 5),
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            )),
                                      ),
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
                  DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 3),
                                child: TabBar(
                                  labelColor: HexColor("#000000"),
                                  unselectedLabelColor: HexColor("#A3A1A1"),
                                  indicator: BoxDecoration(
                                      //color: HexColor("#FFFFFF"),
                                      borderRadius: BorderRadius.circular(7)),
                                  tabs: [
                                    Tab(
                                      text: 'General',
                                    ),
                                    Tab(
                                      text: 'Business',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height,
                              child: Flexible(
                                child: TabBarView(children: <Widget>[
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
                                  Container(
                                      child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Divider(
                                        thickness: 2,
                                        color: HexColor("#D8E1E5"),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          "Business Name",
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
                                          "Akriti Studio",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400),
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
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "About Business",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              "(Optional)",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      controller.isEditAbout.value != false
                                          ? Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20),
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
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide
                                                                      .none),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide
                                                                      .none),
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 10)),
                                                ),
                                              ),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 16),
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Card(
                                                    color: HexColor("#EAEAEA"),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Text(
                                                        "Lorem ipsum is a dummy text without any sense. It is a sequence of Latin words that, as they are positioned, do not form sentences with a complete sense, but give life to a test text useful to fill spaces.",
                                                      ),
                                                    )),
                                              ),
                                            ),
                                      controller.isEditAbout.value != false
                                          ? Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2)),
                                                          backgroundColor:
                                                              HexColor(
                                                                  "#9A9D9E")),
                                                      onPressed: () {
                                                        controller.isEditAbout
                                                            .value = false;
                                                      },
                                                      child: Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      )),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2)),
                                                          backgroundColor:
                                                              HexColor(
                                                                  "#0D86BF")),
                                                      onPressed: () {
                                                        controller.isEditAbout
                                                            .value = false;
                                                      },
                                                      child: Text(
                                                        "Save",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      )),
                                                ],
                                              ),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2)),
                                                          backgroundColor:
                                                              HexColor(
                                                                  "#0D86BF")),
                                                      onPressed: () {
                                                        controller.isEditAbout
                                                            .value = true;
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
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10),
                                        child: Text(
                                          "Business Address",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      controller.isEditAddress.value != false
                                          ? Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20),
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
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide
                                                                      .none),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide
                                                                      .none),
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 10)),
                                                ),
                                              ),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 16),
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Card(
                                                  color: HexColor("#EAEAEA"),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 10),
                                                    child: Text(
                                                      "Test Apartment, Block A, Industry House\nIndore, 452001\nMadhya Pradesh\nIndia",
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                      controller.isEditAddress.value != false
                                          ? Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2)),
                                                          backgroundColor:
                                                              HexColor(
                                                                  "#9A9D9E")),
                                                      onPressed: () {
                                                        controller.isEditAddress
                                                            .value = false;
                                                      },
                                                      child: Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      )),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2)),
                                                          backgroundColor:
                                                              HexColor(
                                                                  "#0D86BF")),
                                                      onPressed: () {
                                                        controller.isEditAddress
                                                            .value = false;
                                                      },
                                                      child: Text(
                                                        "Save",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      )),
                                                ],
                                              ),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2)),
                                                          backgroundColor:
                                                              HexColor(
                                                                  "#0D86BF")),
                                                      onPressed: () {
                                                        controller.isEditAddress
                                                            .value = true;
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
                                  )),
                                ]),
                              ),
                            )
                          ])),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       "General",
                  //       style:
                  //           TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  //     ),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     TextButton(
                  //       onPressed: () {
                  //         Get.toNamed(Routes.PROFILE_SETTINGS_BUSINESS);
                  //       },
                  //       child: Text("Business",
                  //           style: TextStyle(
                  //               color: HexColor("#A3A1A1"),
                  //               fontWeight: FontWeight.w400)),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
