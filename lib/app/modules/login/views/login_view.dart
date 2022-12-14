import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Blue Background PNG 1.png"),
              fit: BoxFit.fill)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(),
          const SizedBox(
              width: double.maxFinite,
              child: Center(
                  child: Text(
                "Log in",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: Colors.white),
              ))),
          const Spacer(),
          // ignore: sized_box_for_whitespace
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
                color: Colors.white, border: Border.all(color: Colors.black)),
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
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            alignment: Alignment.centerLeft,
            child: const Text(
              "PASSWORD",
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
              obscureText: true,
              textAlign: TextAlign.start,
              decoration: InputDecoration(

                fillColor: Colors.white,
                hintText: 'Enter Your Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0.0),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.5,
            child: InkWell(
              onTap: () {
                Get.toNamed('login-options');
              },
              child: Column(
                children: [
                  Text(
                    "Don’t have an Account ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Text("Register Here!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),)
                ],
              ),
            ),
          ),
          const Spacer(),

          InkWell(
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
                      child: Image.asset("assets/images/Vector(15).png"),height: 45,)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Forgot Password?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
        ],
      ),
    ));
  }
}
