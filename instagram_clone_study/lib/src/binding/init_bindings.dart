import 'package:get/get.dart';
import 'package:instagram_clone_study/src/controllers/bottom_nav_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
  }
}
