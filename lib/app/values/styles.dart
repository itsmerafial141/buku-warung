import 'package:flutter/material.dart';

import 'colors.dart';

class MyStyles {
  static TextStyle heading1 = TextStyle(
    fontFamily: "GilroyBold",
    fontSize: 32,
    color: MyColors.white,
  );
  static TextStyle heading2 = TextStyle(
    fontFamily: "GilroyBold",
    color: MyColors.white,
    fontSize: 16,
  );
  static TextStyle body = TextStyle(
    fontFamily: "GilroyMedium",
    color: MyColors.white,
    fontSize: 14,
  );
  static TextStyle bodyDisable = TextStyle(
    fontFamily: "GilroyMedium",
    color: MyColors.gray,
    fontSize: 14,
  );
  static TextStyle button = TextStyle(
    fontFamily: "GilroyBold",
    fontSize: 12,
    color: MyColors.white,
  );
  static TextStyle caption = TextStyle(
    fontFamily: "GilroyRegular",
    color: MyColors.gray,
    fontSize: 10,
  );
  static TextStyle smallCaption = TextStyle(
    fontFamily: "GilroyLight",
    color: MyColors.gray,
    fontSize: 8,
  );

  static TextStyle customMyStyles(double size, Color color, String font) {
    TextStyle customStyle = TextStyle(
      fontFamily: font,
      color: color,
      fontSize: size,
    );
    return customStyle;
  }
}

class MyFont{
  static String gilroyBold = "GilroyBold";
  static String gilroyMedium = "GilroyMedium";
  static String gilroyRegular = "GilroyRegular";
  static String gilroyLight = "GilroyLight";
  static String gilroyThin = "GilroyThin";
}

class MySize {
  static double heading1 = 34;
  static double heading2 = 24;
  static double body = 16;
  static double bodyDisable = 16;
  static double button = 14;
  static double caption = 12;
  static double smallCaption = 10;
}
