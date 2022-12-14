import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../controllers/otp_controller.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class OtpView extends GetView<OtpController> {
  TextEditingController ctrl = TextEditingController();
  TextEditingController ctr2 = TextEditingController();
  TextEditingController ctr3 = TextEditingController();
  TextEditingController ctr4 = TextEditingController();

  OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Blue Background PNG 1(3).png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/images/img_2.png')),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Please enter the OTP to\nverify your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    "An OTP has been sent to",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Text(
                    "9XXXXXX889",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(),
                child: OtpTextField(
                  borderRadius: BorderRadius.zero,
                  margin: EdgeInsets.zero,
                  numberOfFields: 4,
                  fieldWidth: 70,
                  borderColor: Colors.black,
                  borderWidth: 0.5,

                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  enabledBorderColor: Colors.black,
                  focusedBorderColor: Colors.black,

                  filled: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        });
                  }, // end onSubmit
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed('buisness-info');
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
                          "Verify",
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
              const Text(
                "Resend OTP in 5 sec",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
