import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

// ignore: must_be_immutable
class OnboardingView extends GetView<OnboardingController> {
  final onboardingItems = {
    'title': [
      'Welcome to the Morvi',
      'Live Enquiry',
      'Engage with Photographer',
    ],
    'desc': [
      'We are helping photographer confidently.Find Solution to you need here.',
      'Get access to Live enquiry as per Photographer need.Create Enquiry on what matter to you.',
      'The Only Spot where user can contact with photographer.'
    ],
  };

  OnboardingView({super.key});

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView(
          controller: pageController,
          onPageChanged: (value) {
            controller.currentIndex.value = double.parse(value.toString());
          },
          children: [
            Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.2,
                width: double.maxFinite,
                child: Image.asset(
                  'assets/images/undraw_product_photography_91i2 1(2).png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  onboardingItems['title']![0],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text(
                  onboardingItems['desc']![0],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
            ]),
            Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.2,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset(
                    'assets/images/undraw_Photo_session_re_c0cp 1(1).png',
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  onboardingItems['title']![1],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text(
                  onboardingItems['desc']![1],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
            ]),
            Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.2,
                width: double.maxFinite,
                child: Image.asset(
                  'assets/images/undraw_Photo_session_re_c0cp 1.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  onboardingItems['title']![2],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text(
                  onboardingItems['desc']![2],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
            ]),
          ],
        ),
         Positioned(
          bottom: MediaQuery.of(context).size.height * 0.14,
          left: MediaQuery.of(context).size.height * 0.20,
          child: Obx(
            () => Padding(
              padding: const EdgeInsets.only(top: 15),
              child: DotsIndicator(
                dotsCount: 3,
                position: controller.currentIndex.value,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ),
        ),
         Positioned(
          bottom: MediaQuery.of(context).size.height * 0.05,
          right: MediaQuery.of(context).size.height * 0.04,
          child: InkWell(
            onTap: () {
              if (controller.currentIndex.value == 0) {
                pageController.animateToPage(1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceIn);
              }
              if (controller.currentIndex.value == 1) {
                pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceIn);
              }
              if (controller.currentIndex.value == 2) {
                pageController.animateToPage(3,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceIn);
              }
              if (controller.currentIndex.value == 2) {
                Get.toNamed('/login');
              }
            },
            child: Row(
              children: const [
                Text(
                  "Next",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
