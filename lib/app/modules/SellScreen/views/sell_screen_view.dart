import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../routes/app_pages.dart';
import '../controllers/sell_screen_controller.dart';

class SellScreenView extends GetView<SellScreenController> {
  const SellScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#0D86BF"),
          title: const Text(
            'Sell',
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
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Text(
                  "No Products Added",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4.5,
                ),
                CircleAvatar(
                    radius: 25,
                    backgroundColor: HexColor("#076C9C"),
                    child: IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.ADD_PRODUCT_SELL);
                        },
                        icon: Icon(
                          Icons.add,
                          color: HexColor("#FFFFFF"),
                        ))),
                SizedBox(
                  height: 17,
                ),
                Text(
                  "Add New Products",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "You can add here as many",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
                Text("products as you want and target",
                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
                Text("to specific places to sell.",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18))
              ],
            ),
          ),
        ));
  }
}
