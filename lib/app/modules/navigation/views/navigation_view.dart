import 'package:buku_warung/app/modules/homepage/views/homepage_view.dart';
import 'package:buku_warung/app/modules/lainnya/views/lainnya_view.dart';
import 'package:buku_warung/app/modules/pembayaran/views/pembayaran_view.dart';
import 'package:buku_warung/app/modules/transaksi/views/transaksi_view.dart';
import 'package:buku_warung/app/modules/utang/views/utang_view.dart';
import 'package:buku_warung/app/values/colors.dart';
import 'package:buku_warung/app/values/strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(NavigationController());
    return Scaffold(
      body: IndexedStack(
        index: controller.navigationIndex.value,
        children: [
          HomepageView(),
          UtangView(),
          PembayaranView(),
          TransaksiView(),
          LainnyaView(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: MyColors.white,
        ),
        child: Row(
          children: List.generate(
            MyStrings.listNavigationTab.length,
            (index) {
              return Container(
                child: Column(
                  children: [
                    Icon(
                      MyStrings.listNavigationTabImage[index],
                      color: controller.navigationIndex.value == index
                          ? MyColors.primaryColor
                          : MyColors.gray,
                    ),
                    Text(
                      MyStrings.listNavigationTab[index],
                      style: TextStyle(
                        fontFamily: "GilroyRegular",
                        color: controller.navigationIndex.value == index
                            ? MyColors.primaryColor
                            : MyColors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
