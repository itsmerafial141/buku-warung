import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import 'hpg_tittle_heading3_widget.dart';
import 'hpg_tittle_small_caption_widget.dart';

class HPGFeaturedAndAdsWidget extends StatelessWidget {
  const HPGFeaturedAndAdsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HPGTIttleHeading3(
                                tittle: "Juragan Bronze",
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              HPGTittleSmallCaption(
                                tittle: "Lihat detail level kamu",
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HPGTIttleHeading3(
                                tittle: "${math.Random().nextInt(9999)}",
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              HPGTittleSmallCaption(
                                tittle: "Tukar Poin jadi Saldo",
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
    );
  }
}
