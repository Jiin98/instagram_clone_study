import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone_study/src/components/image_data.dart';
import 'package:instagram_clone_study/src/controllers/bottom_nav_controller.dart';
import 'package:instagram_clone_study/src/pages/home.dart';
import 'package:instagram_clone_study/src/pages/search/search.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: ImageData(IconsPath.logo, width: 270),
            actions: [
              GestureDetector(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ImageData(IconsPath.directMessage, width: 50)),
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              Container(
                child: Home(),
              ),
              Container(
                child: Search(),
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
