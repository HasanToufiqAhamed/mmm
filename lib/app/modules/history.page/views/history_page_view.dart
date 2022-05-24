import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/history_page_controller.dart';

class HistoryPageView extends GetView<HistoryPageController> {
  const HistoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'HistoryPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
