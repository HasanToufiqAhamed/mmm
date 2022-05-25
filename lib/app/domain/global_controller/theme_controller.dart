import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  final String key = "theme";
  SharedPreferences? _pref;
  RxBool darkTheme = false.obs;

  @override
  void onInit() {
    _initPrefs();
    _loadFromPrefs();
    super.onInit();
  }

  ThemeController() {
    darkTheme.value = false;
    _loadFromPrefs();
  }

  toggleTheme() {
    darkTheme.value = !darkTheme.value;
    update();
    _saveToPrefs();
  }

  _initPrefs() async {
    _pref ??= await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    darkTheme.value = _pref!.getBool(key) ?? false;
    if(!darkTheme.value){
      update();
    }
  }

  _saveToPrefs() async {
    await _initPrefs();
    _pref!.setBool(key, darkTheme.value);
  }
}
