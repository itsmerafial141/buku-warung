import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/utang_controller.dart';

class UtangView extends GetView<UtangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UtangView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UtangView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
