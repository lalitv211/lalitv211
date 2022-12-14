import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:morvi/app/routes/app_pages.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  const ProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        title: const Text(
          'Products',
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Product List",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: HexColor("#076C9C"),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: IconButton(
                            icon: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.ADD_PRODUCT_SELL);
                              //  Get.toNamed(Routes.CATEGORY_PAGE);
                            },
                          )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add New",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.PRODUCT_DETAILS);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.9,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.5))
                        ],
                        color: HexColor("#FFFFFF"),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset("assets/images/Rectangle 33(2).png"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "DSLR",
                          style: TextStyle(
                              color: HexColor("#076C9C"),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "CAMERA",
                          style: TextStyle(
                              color: HexColor("#076C9C"),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Modal:",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "IVR700",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Brand:",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Sony",
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Good Condition"),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Demand:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#0D86BF")),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "20000 Rs.",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: HexColor("#0D86BF")),
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ],
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
                  "LOG IN",
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
