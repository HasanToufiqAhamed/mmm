import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedHomeIndex = 0.obs;
  PageController pageViewController = PageController(initialPage: 0);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
