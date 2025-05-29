import 'dart:ui';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Controllers/theme_controller.dart';

class LocaleController extends GetxController {
  Rx<Locale> activeLocale = Rx(Locale('en'));
  changeLocale() {
    if (isEnglishLocale()) {
      Get.updateLocale(const Locale('fa'));
      activeLocale.value = Locale('fa');
    } else {
      Get.updateLocale(const Locale('en'));
      activeLocale.value = Locale('en');
    }
    Get.find<ThemeController>().changeFontTheme();
  }

  bool isEnglishLocale() {
    return (Get.locale ?? const Locale('en')).languageCode == 'en';
  }
}
