import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mmm/app/data/defaoult/theme_model.dart';
import 'package:mmm/app/domain/global_controller/theme_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetBuilder<ThemeController>(
      init: ThemeController(),
      builder: (c) {
        return GetMaterialApp(
          initialBinding: initBinding(),
          title: "MMM",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: ThemeModel().lightMode,
          darkTheme: ThemeModel().darkMode,
          themeMode: c.darkTheme.value ? ThemeMode.dark : ThemeMode.light,
        );
      },
    ),
  );
}

initBinding() {
  Get.find<ThemeController>();
}
