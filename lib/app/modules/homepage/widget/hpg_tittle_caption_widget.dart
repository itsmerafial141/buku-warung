import 'package:flutter/material.dart';

import '../../../values/colors.dart';

class HPGTittleCaption extends StatelessWidget {
  const HPGTittleCaption({
    required this.tittle,
  });

  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: TextStyle(
        fontFamily: "GilroyRegular",
        fontSize: 12,
        color: MyColors.black,
      ),
    );
  }
}
