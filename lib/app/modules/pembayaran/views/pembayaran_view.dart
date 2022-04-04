import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pembayaran_controller.dart';

class PembayaranView extends GetView<PembayaranController> {
  @override
  Widget build(BuildContext context) {
    var controller
    return Scaffold(
      appBar: AppBar(
        title: Text('PembayaranView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PembayaranView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
