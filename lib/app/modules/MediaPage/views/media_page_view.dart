import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:morvi/app/routes/app_pages.dart';
import '../controllers/media_page_controller.dart';

class MediaPageView extends GetView<MediaPageController> {
  const MediaPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        title: const Text(
          'Media',
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
              "No Media files here",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3.5),
            CircleAvatar(
              backgroundColor: HexColor("#076C9C"),
              radius: 25,
              child: IconButton(
                onPressed: () {
                  showDialog(
                      context: (context),
                      builder: (_) => Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 5,
                              decoration: BoxDecoration(
                                  color: HexColor("#FFFFFF"),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Get.offAndToNamed(Routes.MEDIA_PHOTOS_VIDEOS);
                                    },
                                    child: Text("Add Photos",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Center(
                                      child: Divider(
                                    thickness: 0.75,
                                    color: HexColor("#C0C0C0"),
                                  )),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("Add Videos",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                          ));
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
