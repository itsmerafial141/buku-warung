import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';

class HPGListMenuWidget extends StatelessWidget {
  const HPGListMenuWidget({
    required this.listDataTittle,
    required this.listDataImage,
  });

  final List listDataTittle;
  final List listDataImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              listDataTittle.length,
              (index) {
                return Tooltip(
                  message: listDataTittle[index],
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
                            height: 40,
                            width: 40,
                            color: MyColors.primaryColor,
                            image: AssetImage(
                              listDataImage[index],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            listDataTittle[index],
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
    );
  }
}
