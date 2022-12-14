import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:morvi/app/routes/app_pages.dart';

import '../controllers/media_photos_videos_controller.dart';

class MediaPhotosVideosView extends GetView<MediaPhotosVideosController> {
  const MediaPhotosVideosView({Key? key}) : super(key: key);
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "4 Items",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: HexColor("#076C9C"),
                        radius: 20,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: HexColor("#FFFFFF"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Add New",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height / 5.8,
                          child: Image.asset(
                            "assets/images/Rectangle 30(3).png",
                            fit: BoxFit.cover,
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 58, top: 35),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.visibility,
                                color: Colors.white,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 109),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height / 5.8,
                          child: Image.asset(
                            "assets/images/Rectangle 30(5).png",
                            fit: BoxFit.cover,
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 58, top: 35),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.visibility,
                                color: Colors.white,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 109),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height / 5.8,
                          child: Image.asset(
                            "assets/images/Rectangle 30(4).png",
                            fit: BoxFit.cover,
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 58, top: 35),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.visibility,
                                color: Colors.white,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 109),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height / 5.8,
                          child: Image.asset(
                            "assets/images/Rectangle 30(4).png",
                            fit: BoxFit.cover,
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 58, top: 35),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.visibility,
                                color: Colors.white,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 109),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.toNamed('home');
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: HexColor("#0D86BF"),
                    borderRadius: BorderRadius.circular(2)),
                child: Center(
                    child: Text(
                  "DONE",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 1.4,
                top: 15,
                child: Image.asset("assets/images/Vector(15).png"),
                height: 45,
              )
            ],
          ),
        ),
      ),
    );
  }
}
