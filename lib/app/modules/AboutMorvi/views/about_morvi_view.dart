import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/about_morvi_controller.dart';

class AboutMorviView extends GetView<AboutMorviController> {
  const AboutMorviView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#0D86BF"),
          title: const Text('About Morvi'),
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
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem\nIpsum has been the industry's standard\ndummy text ever since the 1500s, when\nan unknown printer took a galley of type\nand scrambled it to make a type\nspecimen book. It has survived not only\nfive centuries, but also the leap into\nelectronic typesetting, remaining\nessentially unchanged. It was\npopularised in the 1960s with the release\nof Letraset sheets containing Lorem\nIpsum passages, and more recently with\ndesktop publishing software like Aldus\nPageMaker including versions of Lorem\nIpsum",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
