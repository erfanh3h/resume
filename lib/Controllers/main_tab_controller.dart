import 'package:refreshed/refreshed.dart';

class MainTabController extends GetxController {
  RxInt activeIndex = RxInt(0);
  changeIndex(int index) {
    activeIndex.value = index;
  }
}
