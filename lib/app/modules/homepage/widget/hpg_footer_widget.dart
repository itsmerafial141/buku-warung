import 'package:flutter/material.dart';

import '../../../values/colors.dart';

class HPGFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
