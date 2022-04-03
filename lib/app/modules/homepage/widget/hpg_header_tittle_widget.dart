import 'package:buku_warung/app/modules/homepage/widget/hpg_tittle_heading2_widget.dart';
import 'package:flutter/material.dart';

import '../../../values/colors.dart';

class HPGheaderTittleWidget extends StatelessWidget {
  const HPGheaderTittleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              InkWell(
                onTap: () {},
                child: Stack(
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
                ),
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
    );
  }
}
