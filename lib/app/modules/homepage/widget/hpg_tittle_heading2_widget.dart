import 'package:flutter/material.dart';

import '../../../values/colors.dart';

class HPGTittleHeading2 extends StatelessWidget {
  const HPGTittleHeading2({
    required this.tittle,
  });

  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        tittle,
        style: TextStyle(
          fontFamily: "GilroyBold",
          color: MyColors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
