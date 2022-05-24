import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../domain/global_controller/theme_controller.dart';
import '../controllers/settings_page_controller.dart';

class SettingsPageView extends GetView<SettingsPageController> {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ThemeController>(
        builder: (themeController) {
          return Center(
            child: Obx(
              () {
                return ListTile(
                  title: Text('Dark mode'),
                  leading: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Icon(Icons.dark_mode_outlined, size: 22, color: Colors.white),
                  ),
                  trailing: Switch(
                    activeColor: Theme.of(context).primaryColor,
                    value: themeController.darkTheme.value,
                    onChanged: (bool) {
                      themeController.toggleTheme();
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
