import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mmm/app/domain/global_controller/theme_controller.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'HomePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
