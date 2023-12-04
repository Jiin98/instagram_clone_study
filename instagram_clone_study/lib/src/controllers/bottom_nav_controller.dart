import 'package:get/get.dart';
import 'package:instagram_clone_study/src/pages/upload.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;
  List<int> bottomHistory = [0];

  void changeBottomNav(int value, {bool hasGesture = true}) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.UPLOAD:
        Get.to(() => const Upload());
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        _changePage(value, hasGesture: hasGesture);
        break;
    }
  }

  void _changePage(int value, {bool hasGesture = true}) {
    pageIndex(value);
    if (!hasGesture) return;
    print('bottomHistory: $bottomHistory');
    bottomHistory.add(value);
    print('Added bottomHistory: $bottomHistory');
  }

  Future<bool> willPopAction() async {
    if (bottomHistory.length == 1) {
      print('Exit!');
      return true;
    } else {
      print('Go to before page!');
      bottomHistory.removeAt(bottomHistory.length - 1);
      print('Removed bottomHistory: $bottomHistory');
      var index = bottomHistory.last;
      changeBottomNav(index, hasGesture: false);
      return false;
    }
  }
}
