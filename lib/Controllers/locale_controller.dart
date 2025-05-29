import 'dart:ui';
import 'package:refreshed/refreshed.dart';

class LocaleController extends GetxController {
  Rx<Locale> activeLocale = Rx(Locale('fa'));
  changeLocale() {
    if ((Get.locale ?? const Locale('en')).languageCode == 'en') {
      Get.updateLocale(const Locale('fa'));
      activeLocale.value = Locale('fa');
    } else {
      Get.updateLocale(const Locale('en'));
      activeLocale.value = Locale('en');
    }
  }
}
