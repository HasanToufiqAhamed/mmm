import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistic_page_controller.dart';

class StatisticPageView extends GetView<StatisticPageController> {
  const StatisticPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'StatisticPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
