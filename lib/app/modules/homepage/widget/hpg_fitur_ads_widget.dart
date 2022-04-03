import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import 'hpg_tittle_caption_widget.dart';
import 'hpg_tittle_heading2_widget.dart';
import 'hpg_tittle_heading3_widget.dart';

class HPGFiturAdsWidget extends StatelessWidget {
  const HPGFiturAdsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                HPGTIttleHeading3(
                    tittle: "Kumpulkan BukuPoinmu sebanyak-banyaknya yuk!"),
                SizedBox(
                  height: 10,
                ),
                HPGTittleCaption(
                  tittle:
                      "Lalu nanti bisa di tukarkan dengan Saldo untuk belanja Produk Digital!",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
