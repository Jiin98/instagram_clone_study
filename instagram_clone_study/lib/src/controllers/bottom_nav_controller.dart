import 'package:get/get.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.HOME:
        _changePage(value);
      case PageName.SEARCH:
        _changePage(value);
      case PageName.UPLOAD:
        break;
      case PageName.ACTIVITY:
        _changePage(value);
      case PageName.MYPAGE:
        _changePage(value);
    }
  }

  void _changePage(int value) {
    pageIndex(value);
  }
}
