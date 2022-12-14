import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../routes/app_pages.dart';
import '../controllers/photoframe_page_controller.dart';

class PhotoframePageView extends GetView<PhotoframePageController> {
  const PhotoframePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        title: const Text(
          'Photoframe',
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
            SizedBox(
              height: 30,
            ),
            Text(
              "No Items here",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3.5),
            CircleAvatar(
              backgroundColor: HexColor("#076C9C"),
              radius: 25,
              child: IconButton(
                onPressed: () {
                  Get.toNamed(Routes.PHOTOFRAME_ADD_NEW_PAGE);
                },
                icon: Icon(
                  Icons.add,
                  color: HexColor("#FFFFFF"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Add New",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
