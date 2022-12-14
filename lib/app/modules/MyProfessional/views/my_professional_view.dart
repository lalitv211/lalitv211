import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:morvi/app/routes/app_pages.dart';

import '../controllers/my_professional_controller.dart';
import 'package:hexcolor/hexcolor.dart';

class MyProfessionalView extends GetView<MyProfessionalController> {
  bool isswitch = true;
  MyProfessionalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        centerTitle: true,
        title: Text(
          "My Professional",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/GreyBackground.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor("#0D86BF")),
                        onPressed: () {
                          Get.toNamed(Routes.YOUR_PROFESSIONAL);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text("Add Professional"),
                        ))),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor("#E28801")),
                  onPressed: () {
                    Get.toNamed("/professional-tab");
                  },
                  child: Text("Complete Profile")),
              SizedBox(
                height: MediaQuery.of(context).size.height/1.4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: InkWell(
                    onTap: (){

                    },
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (BuildContext, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height / 5,
                                  width: MediaQuery.of(context).size.width / 3.1,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              controller.images[index]),
                                          fit: BoxFit.cover),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))),
                                  child: Center(child: Text(controller.lalit[index].name,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w700,color: Colors.white ),)),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height / 5,
                                  width: MediaQuery.of(context).size.width / 1.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,

                                        children: [
                                            Switch(value: isswitch, onChanged: (_) {}),

                                          ],
                                        ),
                                        Text(controller.lalit[index].name,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                                    Flexible(
                                                      child: ElevatedButton(
                                                           style: ElevatedButton.styleFrom(
                                                               backgroundColor: HexColor("#CD3B32")),
                                                           onPressed: () {},
                                                           child: Text("Remove")),
                                                     ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              )
              // Padding(
              //   padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              //   child: Row(
              //     children: [
              //       Container(
              //         height: MediaQuery.of(context).size.height / 5.1,
              //         width: MediaQuery.of(context).size.width / 3.3,
              //         decoration: BoxDecoration(
              //             color: HexColor("#E28801"),
              //             borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(10),
              //                 bottomLeft: Radius.circular(10))),
              //         child: Center(
              //           child: Padding(
              //             padding: const EdgeInsets.only(
              //                 top: 50, left: 24, right: 25),
              //             child: Column(
              //               children: [
              //                 Text(
              //                   "Photo",
              //                   style: TextStyle(
              //                       color: HexColor("#FFFFFF"),
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 13),
              //                 ),
              //                 Text(
              //                   "Studio",
              //                   style: TextStyle(
              //                       color: HexColor("#FFFFFF"),
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 13),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //       Container(
              //         height: MediaQuery.of(context).size.height / 5.1,
              //         width: MediaQuery.of(context).size.width / 1.8,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.only(
              //                 topRight: Radius.circular(10),
              //                 bottomRight: Radius.circular(10)),
              //             color: HexColor("#FFFFFF")),
              //         child: Padding(
              //           padding: const EdgeInsets.only(left: 20),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.end,
              //                 children: [
              //                   Switch(value: isswitch, onChanged: (_) {}),
              //                 ],
              //               ),
              //               Text(
              //                 "Photo Studio",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w600, fontSize: 16),
              //               ),
              //               ElevatedButton(
              //                   style: ElevatedButton.styleFrom(
              //                       backgroundColor: HexColor("#CD3B32")),
              //                   onPressed: () {},
              //                   child: Text("Remove")),
              //             ],
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 25, right: 25),
              //   child: Row(
              //     children: [
              //       Container(
              //         width: MediaQuery.of(context).size.width / 3.3,
              //         height: MediaQuery.of(context).size.height / 5.1,
              //         decoration: BoxDecoration(
              //             color: HexColor("#0D86BF"),
              //             borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(10),
              //                 bottomLeft: Radius.circular(10))),
              //         child: Center(
              //           child: Padding(
              //             padding:
              //                 const EdgeInsets.only(top: 40, left: 5, right: 5),
              //             child: Column(
              //               children: [
              //                 Text(
              //                   "Freelancer",
              //                   style: TextStyle(
              //                       color: HexColor("#FFFFFF"),
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 13),
              //                 ),
              //                 Text(
              //                   "Modeling",
              //                   style: TextStyle(
              //                       color: HexColor("#FFFFFF"),
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 13),
              //                 ),
              //                 Text(
              //                   "Photographer",
              //                   style: TextStyle(
              //                       color: HexColor("#FFFFFF"),
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 15),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //       Container(
              //         height: MediaQuery.of(context).size.height / 5.1,
              //         width: MediaQuery.of(context).size.width / 1.8,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.only(
              //                 topRight: Radius.circular(10),
              //                 bottomRight: Radius.circular(10)),
              //             color: HexColor("#FFFFFF")),
              //         child: Padding(
              //           padding: const EdgeInsets.only(left: 20),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Text(
              //                     "Freelancer",
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.w600,
              //                         fontSize: 13),
              //                   ),
              //                   Switch(value: isswitch, onChanged: (_) {}),
              //                 ],
              //               ),
              //               Text(
              //                 "Modeling",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w600, fontSize: 13),
              //               ),
              //               Text(
              //                 "Photographer",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w600, fontSize: 13),
              //               ),
              //               Flexible(
              //                 child: ElevatedButton(
              //                     style: ElevatedButton.styleFrom(
              //                         backgroundColor: HexColor("#CD3B32")),
              //                     onPressed: () {},
              //                     child: Text("Remove")),
              //               ),
              //             ],
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 25, right: 25),
              //   child: Row(
              //     children: [
              //       Container(
              //         width: MediaQuery.of(context).size.width / 3.3,
              //         height: MediaQuery.of(context).size.height / 5.1,
              //         decoration: BoxDecoration(
              //             color: HexColor("#E28801"),
              //             borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(10),
              //                 bottomLeft: Radius.circular(10))),
              //         child: Center(
              //           child: Padding(
              //             padding: const EdgeInsets.only(
              //                 top: 50, left: 18, right: 18),
              //             child: Column(
              //               children: [
              //                 Text(
              //                   "Camera",
              //                   style: TextStyle(
              //                       color: HexColor("#FFFFFF"),
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 15),
              //                 ),
              //                 Text(
              //                   "Operator",
              //                   style: TextStyle(
              //                       color: HexColor("#FFFFFF"),
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 15),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //       Container(
              //         height: MediaQuery.of(context).size.height / 5.1,
              //         width: MediaQuery.of(context).size.width / 1.8,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.only(
              //                 topRight: Radius.circular(10),
              //                 bottomRight: Radius.circular(10)),
              //             color: HexColor("#FFFFFF")),
              //         child: Padding(
              //           padding: const EdgeInsets.only(
              //             left: 20,
              //           ),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.end,
              //                 children: [
              //                   Switch(value: isswitch, onChanged: (_) {}),
              //                 ],
              //               ),
              //               Text(
              //                 "Camera",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w600, fontSize: 16),
              //               ),
              //               Text(
              //                 "Operator",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w600, fontSize: 16),
              //               ),
              //               Flexible(
              //                 child: ElevatedButton(
              //                     style: ElevatedButton.styleFrom(
              //                         backgroundColor: HexColor("#CD3B32")),
              //                     onPressed: () {},
              //                     child: Text("Remove")),
              //               ),
              //             ],
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class forchaack{

  final String name;
  final int id;

  forchaack( {
   required this.name,
    required this.id,

});



}
