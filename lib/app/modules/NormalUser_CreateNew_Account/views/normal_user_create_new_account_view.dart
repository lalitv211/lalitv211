import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/normal_user_create_new_account_controller.dart';

class NormalUserCreateNewAccountView
    extends GetView<NormalUserCreateNewAccountController> {
  const NormalUserCreateNewAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Blue Background PNG 1.png"),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                  width: double.maxFinite,
                  child: Center(
                      child: Text(
                    "Create New Account",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        color: Colors.white),
                  ))),
              SizedBox(
                  width: double.maxFinite,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Registered!",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('login');
                        },
                        child: Text(
                          "Login Here",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 19,
                              color: HexColor("#FFFFFF")),
                        ),
                      )
                    ],
                  ))),
              const SizedBox(
                height: 30,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Full Name",
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
                    border: Border.all(color: Colors.black)),
                width: MediaQuery.of(context).size.width * 0.85,
                child: const TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Enter Your Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "EMAIL",
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
                    border: Border.all(color: Colors.black)),
                width: MediaQuery.of(context).size.width * 0.85,
                child: const TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Enter Your Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Mobile Number",
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
                    border: Border.all(color: Colors.black)),
                width: MediaQuery.of(context).size.width * 0.85,
                child: const TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Enter Your Mobile number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Password",
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
                    border: Border.all(color: Colors.black)),
                width: MediaQuery.of(context).size.width * 0.85,
                child: const TextField(
                  obscureText: true,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Place",
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
                height: 65,
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
                            "Select Place",
                            style: TextStyle(fontWeight: FontWeight.w400),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.toNamed('/normal-user-otp');
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
                  "Next",
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
                height: 46,
              )
            ],
          ),
        ),
      ),
    );
  }
}
