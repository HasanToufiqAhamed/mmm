import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mmm/app/data/icons/bottom_nav_bar_icons.dart';
import 'package:mmm/app/modules/history.page/views/history_page_view.dart';
import 'package:mmm/app/modules/home.page/views/home_page_view.dart';
import 'package:mmm/app/modules/settings.page/views/settings_page_view.dart';
import 'package:mmm/app/modules/statistic.page/views/statistic_page_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: PageView(
        controller: controller.pageViewController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          // controller.pageViewController.
          print('page index:: $index');
        },
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePageView(),
          HistoryPageView(),
          StatisticPageView(),
          SettingsPageView(),
        ],
      ),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            elevation: 20,
            type: BottomNavigationBarType.shifting,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Bottom_nav_bar.home),
                activeIcon: Icon(Bottom_nav_bar.home_bold),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Bottom_nav_bar.history),
                activeIcon: Icon(Bottom_nav_bar.history_bold),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Bottom_nav_bar.statistic),
                activeIcon: Icon(Bottom_nav_bar.statistic_bold),
                label: 'Statistic',
              ),
              BottomNavigationBarItem(
                icon: Icon(Bottom_nav_bar.settings),
                activeIcon: Icon(Bottom_nav_bar.settings_bold),
                label: 'Settings',
              ),
            ],
            currentIndex: controller.selectedHomeIndex.value,
            selectedFontSize: 12,
            unselectedFontSize: 10,
            iconSize: 24,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            onTap: (index) {
              debugPrint('index ::c $index');
              controller.selectedHomeIndex.value = index;
              controller.pageViewController.animateToPage(
                index,
                duration: const Duration(microseconds: 100),
                curve: Curves.easeInOut,
              );
            },
          );
        },
      ),
    );
  }
}
