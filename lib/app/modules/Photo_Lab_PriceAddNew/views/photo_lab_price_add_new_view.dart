import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:morvi/app/routes/app_pages.dart';
import '../controllers/photo_lab_price_add_new_controller.dart';

class PhotoLabPriceAddNewView extends GetView<PhotoLabPriceAddNewController> {
  const PhotoLabPriceAddNewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#0D86BF"),
        title: const Text(
          'Photo Lab Price',
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
                height: MediaQuery.of(context).size.height / 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                        ),
                        Text(
                          "Print Price",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#076C9C"),
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: HexColor('#FFFFFF'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add New",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 60),
              Divider(
                color: HexColor('#D8E1E5'),
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                        ),
                        Text(
                          "Photo Book",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#076C9C"),
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: HexColor('#FFFFFF'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add New",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 60),
              Divider(
                color: HexColor('#D8E1E5'),
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                        ),
                        Text(
                          "Photo Album",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#076C9C"),
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: HexColor('#FFFFFF'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add New",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 60),
              Divider(
                color: HexColor('#D8E1E5'),
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                        ),
                        Text(
                          "Accessories Print",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#076C9C"),
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: HexColor('#FFFFFF'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add New",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 60),
              Divider(
                color: HexColor('#D8E1E5'),
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                        ),
                        Text(
                          "Photo Framing &\nLamination",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#076C9C"),
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: HexColor('#FFFFFF'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add New",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 60),
              Divider(
                color: HexColor('#D8E1E5'),
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor("#0D86BF")),
                        onPressed: () {
                          Get.toNamed(Routes.PHOTOSTUDIO_MATERIAL_SUPPLIES);
                        },
                        child: Text(
                          "Done",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
