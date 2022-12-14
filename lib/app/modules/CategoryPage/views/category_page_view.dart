import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:morvi/app/routes/app_pages.dart';

import '../controllers/category_page_controller.dart';

class CategoryPageView extends GetView<CategoryPageController> {
  const CategoryPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        title: const Text(
          'Category',
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
          padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "No Category Selected",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "You May Choose Upto 5 Categories",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"), border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose a Category",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
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
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"), border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose a Category",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                        CircleAvatar(
                          backgroundColor: HexColor("#CE3213"),
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              color: HexColor("#FFFFFF"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"), border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose a Category",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
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
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"), border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose a Category",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
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
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"), border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose a Category",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
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
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
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
