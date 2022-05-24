import 'package:get/get.dart';

import '../modules/history.page/bindings/history_page_binding.dart';
import '../modules/history.page/views/history_page_view.dart';
import '../modules/home.page/bindings/home_page_binding.dart';
import '../modules/home.page/views/home_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/settings.page/bindings/settings_page_binding.dart';
import '../modules/settings.page/views/settings_page_view.dart';
import '../modules/statistic.page/bindings/statistic_page_binding.dart';
import '../modules/statistic.page/views/statistic_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS_PAGE,
      page: () => SettingsPageView(),
      binding: SettingsPageBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY_PAGE,
      page: () => HistoryPageView(),
      binding: HistoryPageBinding(),
    ),
    GetPage(
      name: _Paths.STATISTIC_PAGE,
      page: () => StatisticPageView(),
      binding: StatisticPageBinding(),
    ),
  ];
}
