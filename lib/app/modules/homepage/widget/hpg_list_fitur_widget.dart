import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import 'hpg_tittle_heading2_widget.dart';

class HPGListFiturWidget extends StatelessWidget {
  const HPGListFiturWidget({
    required this.listDataTittle,
    required this.listDataImage,
  });

  final List listDataTittle;
  final List listDataImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: Get.width,
      color: MyColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          HPGTittleHeading2(
            tittle: "Fitur Andalan Kamu 👌",
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
                    listDataTittle.length,
                    (index) {
                      return Tooltip(
                        message: listDataTittle[index],
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
                                    borderRadius: BorderRadius.circular(20),
                                    color: MyColors.blueLight,
                                  ),
                                  child: Image(
                                    height: 40,
                                    width: 40,
                                    image: AssetImage(
                                      listDataImage[index],
                                    ),
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
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
