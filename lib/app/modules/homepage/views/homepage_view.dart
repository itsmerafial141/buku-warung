import 'dart:math' as math;
import 'package:buku_warung/app/values/colors.dart';
import 'package:buku_warung/app/values/strings.dart';
import 'package:buku_warung/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        leading: MaterialButton(
          onPressed: () {},
          child: Icon(
            Icons.menu,
            color: MyColors.white,
          ),
        ),
        title: Text(
          "Manoramask",
          style: TextStyle(
            fontFamily: MyFont.gilroyBold,
            fontSize: MySize.body,
            color: MyColors.white,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              color: MyColors.primaryColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bayar dan Tagih Uang Antar Bank",
                              style: TextStyle(
                                fontFamily: "GilroyBold",
                                color: MyColors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Container(
                                  height: 30,
                                  width: 130,
                                  padding: EdgeInsets.only(left: 40, right: 10),
                                  margin: EdgeInsets.only(left: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: MyColors.darkBlue,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Aman",
                                        style: TextStyle(
                                          fontFamily: "GilroyBold",
                                          fontSize: 12,
                                          color: MyColors.blueLight,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Tooltip(
                                        message: "Info",
                                        child: Icon(
                                          Icons.info_rounded,
                                          color: MyColors.secondaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image(
                                  height: 30,
                                  width: 30,
                                  image: AssetImage(
                                    "assets/icons/security.png",
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image(
                            height: 50,
                            width: 50,
                            image: AssetImage("assets/images/wallet.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(width: 1, color: MyColors.darkBlue),
                      color: Color.fromRGBO(18, 158, 253, 1),
                    ),
                    child: Row(
                      children: List.generate(
                        MyStrings.listPaymentHomepage.length,
                        (index) {
                          return Expanded(
                            child: Tooltip(
                              message: MyStrings.listPaymentHomepage[index],
                              child: MaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(Get.width),
                                        color: MyColors.darkBlue,
                                      ),
                                      child: Image(
                                        width: 30,
                                        height: 30,
                                        image: AssetImage(
                                          MyStrings
                                              .listPaymentImageHomapage[index],
                                        ),
                                        color: MyColors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      MyStrings.listPaymentHomepage[index],
                                      style: MyStyles.heading2,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("assets/images/wallet.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Rp ${math.Random().nextInt(99)}.${math.Random().nextInt(9999)}",
                            style: TextStyle(
                              fontFamily: "GilroyBold",
                              color: MyColors.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Tooltip(
                            message: "Info",
                            child: Icon(
                              Icons.info_rounded,
                              color: MyColors.blueLight,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "buat jualan pulsa dan tagihan",
                        style: TextStyle(
                          fontFamily: "GilroyRegular",
                          color: MyColors.darkBlue,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Tooltip(
                    message: "Isi Saldo",
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.white,
                        border: Border.all(
                          width: 2,
                          color: MyColors.primaryColor,
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 20,
                              color: MyColors.primaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Isi Saldo",
                              style: TextStyle(
                                fontFamily: "GilroyBold",
                                fontSize: 14,
                                color: MyColors.primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Tambah Penghasilan Jual Pulsa & Tagihan 😎",
                style: TextStyle(
                  fontFamily: "GilroyBold",
                  color: MyColors.black,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      MyStrings.listMenuHomepage.length,
                      (index) {
                        return Tooltip(
                          message: MyStrings.listMenuHomepage[index],
                          child: Container(
                            width: Get.width * 0.2,
                            child: MaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    color: MyColors.primaryColor,
                                    image: AssetImage(
                                      "assets/icons/invoice.png",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    MyStrings.listMenuHomepage[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "GilroyMedium",
                                      color: MyColors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: MyColors.gray,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColors.white,
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage(
                                      "assets/images/wallet.png",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Juragan Bronze",
                                        style: TextStyle(
                                          fontFamily: "GilroyBold",
                                          fontSize: 12,
                                          color: MyColors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Lihat detail level kamu",
                                        style: TextStyle(
                                          fontFamily: "GilroyRegular",
                                          color: MyColors.black,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColors.white,
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage(
                                      "assets/images/wallet.png",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${math.Random().nextInt(9999)}",
                                        style: TextStyle(
                                          fontFamily: "GilroyBold",
                                          fontSize: 12,
                                          color: MyColors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Tukar Poin jadi Saldo",
                                        style: TextStyle(
                                          fontFamily: "GilroyRegular",
                                          color: MyColors.black,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: Get.width,
              color: MyColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Fitur Andalan Kamu 👌",
                      style: TextStyle(
                        fontFamily: "GilroyBold",
                        color: MyColors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: List.generate(
                            MyStrings.listFiturHomepage.length,
                            (index) {
                              return Tooltip(
                                message: MyStrings.listFiturHomepage[index],
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    width: 60,
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: MyColors.blueLight,
                                          ),
                                          child: Image(
                                            height: 40,
                                            width: 40,
                                            image: AssetImage(
                                              "assets/images/wallet.png",
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          MyStrings.listFiturHomepage[index],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "GilroyMedium",
                                            color: MyColors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: MyColors.gray,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mau Dapet Keuntungan Berlimpah?",
                                style: TextStyle(
                                  fontFamily: "GilroyBold",
                                  color: MyColors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    Get.width,
                                  ),
                                  color: MyColors.yellow,
                                ),
                                child: Text(
                                  "Yuk Gabung Geng Juragan Untung",
                                  style: TextStyle(
                                    fontFamily: "GilroyMedium",
                                    color: MyColors.black,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Image(
                            image: AssetImage(
                              "assets/images/join.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: MyColors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kumpulkan BukuPoinmu sebanyak-banyaknya yuk!",
                          style: TextStyle(
                            fontFamily: "GilroyBold",
                            fontSize: 14,
                            color: MyColors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lalu nanti bisa di tukarkan dengan Saldo untuk belanja Produk Digital!",
                          style: TextStyle(
                            fontFamily: "GilroyRegular",
                            fontSize: 12,
                            color: MyColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: Get.width,
              color: MyColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Fitur Menarik Lainya 😘",
                      style: TextStyle(
                        fontFamily: "GilroyBold",
                        color: MyColors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            MyStrings.listFiturLainyaHomepage.length,
                            (index) {
                              return Tooltip(
                                message:
                                    MyStrings.listFiturLainyaHomepage[index],
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    width: 60,
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: index + 1 ==
                                                    MyStrings
                                                        .listFiturLainyaHomepage
                                                        .length
                                                ? MyColors.gray
                                                : MyColors.blueLight,
                                          ),
                                          child: Image(
                                            height: 40,
                                            width: 40,
                                            image: AssetImage(
                                              "assets/images/wallet.png",
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          MyStrings
                                              .listFiturLainyaHomepage[index],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "GilroyMedium",
                                            color: MyColors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: MyColors.gray,
              child: Row(
                children: [
                  Text(
                    "Butuh bantuan?",
                    style: TextStyle(
                      fontFamily: "GilroyBold",
                      color: MyColors.black,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Hubungi CS",
                    style: TextStyle(
                      fontFamily: "GilroyBold",
                      color: MyColors.primaryColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    height: 40,
                    width: 40,
                    image: AssetImage(
                      "assets/icons/customer-service-agent.png",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
