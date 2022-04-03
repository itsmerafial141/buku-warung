import 'package:flutter/material.dart';

import '../../../values/colors.dart';

class HPGTittleSmallCaption extends StatelessWidget {
  const HPGTittleSmallCaption({
    Key? key,
    required this.tittle,
  }) : super(key: key);

  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: TextStyle(
        fontFamily: "GilroyRegular",
        color: MyColors.black,
        fontSize: 10,
      ),
    );
  }
}
