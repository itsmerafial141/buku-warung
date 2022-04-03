import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class HPGheaderPaymnetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                          borderRadius: BorderRadius.circular(Get.width),
                          color: MyColors.darkBlue,
                        ),
                        child: Image(
                          width: 30,
                          height: 30,
                          image: AssetImage(
                            MyStrings.listPaymentImageHomapage[index],
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
    );
  }
}
