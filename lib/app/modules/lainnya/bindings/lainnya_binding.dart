import 'package:get/get.dart';

import '../controllers/lainnya_controller.dart';

class LainnyaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LainnyaController>(
      () => LainnyaController(),
    );
  }
}
