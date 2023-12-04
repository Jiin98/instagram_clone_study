import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone_study/src/components/image_data.dart';
import 'package:instagram_clone_study/src/controllers/bottom_nav_controller.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Obx(
        () => Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(),
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              Container(
                child: Center(child: Text('HOME')),
              ),
              Container(
                child: Center(child: Text('SEARCH')),
              ),
              Container(
                child: Center(child: Text('UPLOAD')),
              ),
              Container(
                child: Center(child: Text('ACTIVITY')),
              ),
              Container(
                child: Center(child: Text('MYPAGE')),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: controller.pageIndex.value,
              onTap: controller.changeBottomNav,
              items: [
                BottomNavigationBarItem(
                  icon: ImageData(IconsPath.homeOff),
                  activeIcon: ImageData(IconsPath.homeOn),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: ImageData(IconsPath.searchOff),
                  activeIcon: ImageData(IconsPath.searchOn),
                  label: 'search',
                ),
                BottomNavigationBarItem(
                  icon: ImageData(IconsPath.uploadIcon),
                  label: 'upload',
                ),
                BottomNavigationBarItem(
                  icon: ImageData(IconsPath.activeOff),
                  activeIcon: ImageData(IconsPath.activeOn),
                  label: 'activity',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  label: 'mypage',
                ),
              ]),
        ),
      ),
      onWillPop: controller.willPopAction,
    );
  }
}
