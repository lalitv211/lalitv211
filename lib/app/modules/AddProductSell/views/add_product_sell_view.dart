import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../routes/app_pages.dart';
import '../controllers/add_product_sell_controller.dart';

class AddProductSellView extends GetView<AddProductSellController> {
  final List<String> items = [
    'Sony',
    'LG',
    'Others',
    'sony',
  ];
  String? selectedValue;

   AddProductSellView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#0D86BF"),
          title: const Text(
            'New Product for Sell',
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
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 35),
            child: SingleChildScrollView(
              child: Obx(
                    () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Product Name/Title",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                              contentPadding: EdgeInsets.zero,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        )),
                    SizedBox(height: 5),
                    Divider(
                      thickness: 0.75,
                      color: HexColor("#C0C0C0"),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Model No.",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                              contentPadding: EdgeInsets.zero,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        )),
                    Divider(
                      thickness: 0.75,
                      color: HexColor("#C0C0C0"),
                    ),
                    Container(
                      height: 30,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Visibility(
                            visible: false,
                            child: Text(""),
                          ),
                          hint: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Choose Brand",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                          items: <String>['Sony', 'Lg', 'Others', 'Sony']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                    // DropdownButtonHideUnderline(
                    //   child: DropdownButton(
                    //     icon: Visibility(
                    //       visible: false,
                    //       child: Text(""),
                    //     ),
                    //     hint: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Text("Choose Brand"),
                    //         // SizedBox(Prin
                    //         //   width: MediaQuery.of(context).size.width / 2.5,
                    //         // ),
                    //         Icon(Icons.keyboard_arrow_down_outlined)
                    //       ],
                    //     ),
                    //     items:  [],
                    //     onChanged: (value) {},
                    //   ),
                    // ),

                    SizedBox(height: 5),
                    Divider(
                      thickness: 0.75,
                      color: HexColor("#C0C0C0"),
                    ),
                    SizedBox(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Price (Your Demand)",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                              contentPadding: EdgeInsets.zero,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        )),
                    SizedBox(height: 5),
                    Divider(
                      thickness: 0.75,
                      color: HexColor("#C0C0C0"),
                    ),
                    SizedBox(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Condition (Good, Vey Good, Excellent)",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                              contentPadding: EdgeInsets.zero,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        )),
                    SizedBox(height: 5),
                    Divider(
                      thickness: 0.75,
                      color: HexColor("#C0C0C0"),
                    ),
                    SizedBox(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Add Product Description",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                              contentPadding: EdgeInsets.zero,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        )),
                    SizedBox(height: 40),
                    Divider(
                      thickness: 0.75,
                      color: HexColor("#C0C0C0"),
                    ),
                    Text(
                      'Add Photos/Videos',
                      style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    controller.forPhotosVideos.value != false
                        ? Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext, index) {
                                return Container(
                                  child: Image.asset(
                                    "assets/images/Rectangle 33(2).png",
                                    fit: BoxFit.cover,
                                  ),
                                );
                              }),
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(2)),
                                    backgroundColor: HexColor("#0D86BF")),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(2)),
                                    backgroundColor: HexColor("#CD3B32")),
                                onPressed: () {
                                  controller.forPhotosVideos.value =
                                  false;
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text("Remove All",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
                                ))
                          ],
                        )
                      ],
                    )
                        : Container(
                      decoration: BoxDecoration(
                          color: HexColor("#FFFFFF"),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 1, color: HexColor("#C0C0C0"))),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: HexColor("#076C9C"),
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: HexColor("#FFFFFF"),
                              ),
                              onPressed: () {
                                controller.forPhotosVideos.value = true;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Add Photos/Videos",
                            style: (TextStyle(
                                color: HexColor("#D0D0D0"),
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Upload Bill/Invoice",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              controller.isInvoice.value = true;
                            },
                            icon: Icon(Icons.file_upload_outlined)),
                      ],
                    ),
                    controller.isInvoice.value != false
                        ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Invoice.pdf")
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "View",
                                  style: TextStyle(
                                      color: HexColor("#076C9C"),
                                      decoration:
                                      TextDecoration.underline),
                                )),
                            TextButton(
                                onPressed: () {
                                  controller.isInvoice.value = false;
                                },
                                child: Text(
                                  "DELETE",
                                  style: TextStyle(
                                      color: HexColor("#CD3B32"),
                                      decoration:
                                      TextDecoration.underline),
                                ))
                          ],
                        )
                      ],
                    )
                        : SizedBox(
                      height: 30,
                    ),
                    Divider(
                      thickness: 0.75,
                      color: HexColor("#C0C0C0"),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        icon: Visibility(
                          visible: false,
                          child: Text(""),
                        ),
                        hint: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Choose Places to Target your\nEnquiry",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(Icons.keyboard_arrow_down)
                          ],
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
                    Divider(
                      thickness: 0.75,
                      color: HexColor("#C0C0C0"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                backgroundColor: HexColor("#0D86BF")),
                            onPressed: () {
                              Get.toNamed(Routes.PRODUCTS);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              child: Text("Add",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                backgroundColor: HexColor("#CD3B32")),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ))
                      ],
                    ),
                    Divider(
                      thickness: 0.75,
                      color: HexColor("#C0C0C0"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
