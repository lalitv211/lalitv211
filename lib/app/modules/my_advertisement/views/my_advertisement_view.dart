import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/my_advertisement_controller.dart';

class MyAdvertisementView extends GetView<MyAdvertisementController> {
  showAlertDialog(BuildContext context) {
    // set up the button
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 10,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Get.toNamed('/your-advertisement');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Text("Add Photo",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
              )),
          const Divider(
            thickness: 1.5,
          ),
          GestureDetector(
              onTap: () {
                Get.toNamed("/your-advertisment-add-video",);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Text("Add Video",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
              )),
          const Divider(
            thickness: 1.5,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/your-advertisment-add-text');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: const Text("Add Text",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  const MyAdvertisementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        title: const Text('Your Advertisement'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/old_images/img_2.png'), fit: BoxFit.cover)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "No Ads Here",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Container(
                decoration:   BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor("#076C9C")
                ),
                height: 50,
                width: 50,
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    size: 35,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showAlertDialog(context);
                  },
                )),
            const Text(
              "No Ads Here",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
