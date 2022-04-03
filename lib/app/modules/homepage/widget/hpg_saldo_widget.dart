import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../../values/colors.dart';

class HPGSaldoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
