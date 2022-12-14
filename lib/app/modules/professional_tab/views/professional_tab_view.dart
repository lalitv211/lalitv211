// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morvi/app/routes/app_pages.dart';
import '../controllers/professional_tab_controller.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfessionalTabView extends GetView<ProfessionalTabController> {
  const ProfessionalTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        centerTitle: true,
        title: const Text("My Professional"),
      ),
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/old_images/img_2.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Complete Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/my-advertisement');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    decoration: const BoxDecoration(
                        color: Color(0xff076C9C), shape: BoxShape.circle),
                    width: 45,
                    child: const Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  // Icon(Icons.circle,color: Color(0xff076C9C),size: 35,),
                  SizedBox(
                    height: 65,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                          child: Text(
                        'Your Advertisement',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      )),

                      // font-weight: 600;
                      // font-size: 17px;
                      // line-height: 20px;
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  decoration: const BoxDecoration(
                      color: Color(0xff076C9C), shape: BoxShape.circle),
                  width: 45,
                  child: const Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                // Icon(Icons.circle,color: Color(0xff076C9C),size: 35,),
                SizedBox(
                  height: 65,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                        child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.NORMAL_USER_LIVE_ENQUIRY);
                      },
                      child: Text(
                        'Live Enquiry',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                    )),
                    //font-family: 'Poppins';
                    // font-style: normal;
                    // font-weight: 600;
                    // font-size: 17px;
                    // line-height: 20px;
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  decoration: const BoxDecoration(
                      color: Color(0xff076C9C), shape: BoxShape.circle),
                  width: 45,
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                // Icon(Icons.circle,color: Color(0xff076C9C),size: 35,),
                SizedBox(
                  height: 65,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                        child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SELL_SCREEN);
                      },
                      child: Text(
                        'Sell Products',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                    )),
                    //font-family: 'Poppins';
                    // font-style: normal;
                    // font-weight: 600;
                    // font-size: 17px;
                    // line-height: 20px;
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  decoration: const BoxDecoration(
                      color: Color(0xff076C9C), shape: BoxShape.circle),
                  width: 45,
                  child: const Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                // Icon(Icons.circle,color: Color(0xff076C9C),size: 35,),
                SizedBox(
                  height: 65,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                        child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.CATEGORY_PAGE);
                      },
                      child: Text(
                        'Category',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  decoration: const BoxDecoration(
                      color: Color(0xff076C9C), shape: BoxShape.circle),
                  width: 45,
                  child: const Center(
                    child: Text(
                      "5",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                // Icon(Icons.circle,color: Color(0xff076C9C),size: 35,),
                SizedBox(
                  height: 65,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                        child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.MEDIA_PAGE);
                      },
                      child: Text(
                        'Media',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                    )),
                    //font-family: 'Poppins';
                    // font-style: normal;
                    // font-weight: 600;
                    // font-size: 17px;
                    // line-height: 20px;
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.toNamed('/professional-view-profile');
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31),
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
                  "View My Profile",
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
