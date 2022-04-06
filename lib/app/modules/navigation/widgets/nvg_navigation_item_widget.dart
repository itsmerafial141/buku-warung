import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../controllers/navigation_controller.dart';

class NavigationItemWidget extends GetView<NavigationController> {
  const NavigationItemWidget({
    required this.nav1,
  });
  final int nav1;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Tooltip(
        message: MyStrings.listNavigationTab[nav1],
        child: Container(
          alignment: Alignment.center,
          // width: (Get.width / MyStrings.listNavigationTab.length),
          child: ElevatedButton(
            onPressed: () {
              controller.navigationIndex.value = nav1;
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent,
              ),
              overlayColor: MaterialStateProperty.all<Color>(
                Colors.black12,
              ),
              minimumSize: MaterialStateProperty.all<Size>(
                Size(
                  Get.width * 0.17,
                  Get.height * 0.1,
                ),
              ),
              elevation: MaterialStateProperty.all<double>(0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Get.width),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MyStrings.listNavigationTabImage[nav1],
                  size: Get.width * 0.07,
                  color: controller.navigationIndex.value == nav1
                      ? MyColors.primaryColor
                      : MyColors.gray,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  MyStrings.listNavigationTab[nav1],
                  style: TextStyle(
                    fontFamily: "GilroyMedium",
                    color: controller.navigationIndex.value == nav1
                        ? MyColors.primaryColor
                        : Colors.black54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
