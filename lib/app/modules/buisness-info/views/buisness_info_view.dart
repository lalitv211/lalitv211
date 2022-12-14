import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../controllers/buisness_info_controller.dart';

class BuisnessInfoView extends GetView<BuisnessInfoController> {
  const BuisnessInfoView({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/img_3.png"), fit: BoxFit.fill)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
                width: double.maxFinite,
                child: Center(
                    child: Text(
                  "Business Information",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white),
                ))),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              alignment: Alignment.centerLeft,
              child: const Text(
                "Business Name",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              width: MediaQuery.of(context).size.width * 0.85,
              child: const TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Enter Your Business Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                    borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              alignment: Alignment.centerLeft,
              child: const Text(
                "About your Business (Optional)",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              width: MediaQuery.of(context).size.width * 0.85,
              child: const TextField(
                maxLines: 4,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Tell us something about your business',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              alignment: Alignment.centerLeft,
              child: const Text(
                "Address",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              width: MediaQuery.of(context).size.width * 0.85,
              child: const TextField(
                maxLines: 3,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: ' ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              alignment: Alignment.centerLeft,
              child: const Text(
                "Select Document Type",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.black)),
              width: MediaQuery.of(context).size.width * 0.85,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          "Select Document Type",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  items: <String>[
                    'A',
                    'B',
                    'c',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              alignment: Alignment.centerLeft,
              child: const Text(
                "UPLOAD DOCUMENT",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 60,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              width: MediaQuery.of(context).size.width * 0.85,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Choose Document",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    Image.asset(
                      "assets/images/Vector(16).png",
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              alignment: Alignment.centerLeft,
              child: const Text(
                "Work Experience",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 60,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              width: MediaQuery.of(context).size.width * 0.85,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: TextField(

                      decoration: InputDecoration(


                          contentPadding: EdgeInsets.zero,
                          hintText: "From Date",
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),

                          //controller: dateInputController,
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2050));

                            if (pickedDate != null) {
                             // dateInputController.text =pickedDate.toString();
                            }
                          },
                    )),
                    Image.asset(
                      "assets/images/Vector(17).png",
                      height: 25,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 18,
            ),
            InkWell(
              onTap: () {
                Get.toNamed('signup-success');
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
                        "Register",
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
