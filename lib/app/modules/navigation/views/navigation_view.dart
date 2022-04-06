import 'package:buku_warung/app/modules/homepage/views/homepage_view.dart';
import 'package:buku_warung/app/modules/lainnya/views/lainnya_view.dart';
import 'package:buku_warung/app/modules/navigation/widgets/nvg_navigation_item_widget.dart';
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
      body: Obx(
        () => IndexedStack(
          index: controller.navigationIndex.value,
          children: [
            HomepageView(),
            UtangView(),
            PembayaranView(),
            TransaksiView(),
            LainnyaView(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: Get.height * 0.1,
        decoration: BoxDecoration(
          color: MyColors.white,
        ),
        child: Row(
          children: [
            MyStrings.listNavigationItem[0],
            Spacer(),
            MyStrings.listNavigationItem[1],
            Spacer(),
            MyStrings.listNavigationItem[2],
            Spacer(),
            MyStrings.listNavigationItem[3],
            Spacer(),
            MyStrings.listNavigationItem[4],
          ],
        ),
        // Stack(
        //   alignment: Alignment.center,
        //   children: List.generate(
        //     MyStrings.listNavigationTab.length,
        //     (index) {
        //       return Positioned(
        //         left: (Get.width / MyStrings.listNavigationTab.length) *
        //             index,
        //         child: Obx(
        //           () => Container(
        //             alignment: Alignment.center,
        //             // width: (Get.width / MyStrings.listNavigationTab.length),
        //             child: ElevatedButton(
        //               onPressed: () {
        //                 controller.navigationIndex.value = index;
        //               },
        //               style: ButtonStyle(
        //                 backgroundColor: MaterialStateProperty.all<Color>(
        //                   Colors.transparent,
        //                 ),
        //                 overlayColor: MaterialStateProperty.all<Color>(
        //                   Colors.black12,
        //                 ),
        //                 minimumSize: MaterialStateProperty.all<Size>(
        //                   Size(
        //                     Get.width * 0.17,
        //                     Get.height * 0.1,
        //                   ),
        //                 ),
        //                 elevation: MaterialStateProperty.all<double>(0),
        //                 shape:
        //                     MaterialStateProperty.all<RoundedRectangleBorder>(
        //                   RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.circular(20),
        //                   ),
        //                 ),
        //               ),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Icon(
        //                     MyStrings.listNavigationTabImage[index],
        //                     size: Get.width * 0.07,
        //                     color: controller.navigationIndex.value == index
        //                         ? MyColors.primaryColor
        //                         : MyColors.gray,
        //                   ),
        //                   SizedBox(
        //                     height: 5,
        //                   ),
        //                   Text(
        //                     MyStrings.listNavigationTab[index],
        //                     style: TextStyle(
        //                       fontFamily: "GilroyMedium",
        //                       color: controller.navigationIndex.value == index
        //                           ? MyColors.primaryColor
        //                           : Colors.black54,
        //                       fontSize: 12,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
      ),
    );
  }
}
