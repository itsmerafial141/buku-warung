import 'package:get/get.dart';

import '../controllers/utang_controller.dart';

class UtangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UtangController>(
      () => UtangController(),
    );
  }
}
