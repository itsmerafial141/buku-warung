import 'package:flutter/material.dart';

import '../../../values/colors.dart';

class HPGTIttleHeading3 extends StatelessWidget {
  const HPGTIttleHeading3({
    Key? key,
    required this.tittle,
  }) : super(key: key);

  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: TextStyle(
        fontFamily: "GilroyBold",
        fontSize: 12,
        color: MyColors.black,
      ),
    );
  }
}
