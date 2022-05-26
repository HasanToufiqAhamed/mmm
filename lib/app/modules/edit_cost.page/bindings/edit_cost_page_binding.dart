import 'package:get/get.dart';

import '../controllers/edit_cost_page_controller.dart';

class EditCostPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditCostPageController>(
      () => EditCostPageController(),
    );
  }
}
