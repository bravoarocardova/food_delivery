import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/app/modules/home/views/nav/home_nav.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'widgets/drawer_hidden_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  Future<bool> _onWillPop() async {
    if (controller.isDrawerOpenV.isTrue) {
      controller.closeDrawer();
      return false;
    } else {
      return (await Get.dialog(
            AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text('Do you want to exit an App'),
              actions: [
                TextButton(
                  onPressed: () => Get.back(),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () => {
                    if (GetPlatform.isAndroid)
                      SystemNavigator.pop()
                    else if (GetPlatform.isIOS)
                      exit(0)
                  },
                  child: const Text('Yes'),
                ),
              ],
            ),
          )) ??
          false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Stack(
        children: [
          const DrawerHiddenWidget(),
          Obx(
            () => AnimatedContainer(
              transform: Matrix4.translationValues(
                  controller.xOffsetV.value, controller.yOffsetV.value, 0)
                ..scale(controller.scaleFactor.value)
                ..rotateY(controller.isDrawerOpenV.isTrue ? -0.5 : 0),
              duration: const Duration(milliseconds: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(controller.isDrawerOpenV.isTrue ? 30 : 0),
                  bottomLeft:
                      Radius.circular(controller.isDrawerOpenV.isTrue ? 30 : 0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFF2F2F2).withOpacity(0.3),
                    offset: const Offset(-50, 45),
                    spreadRadius: -10,
                  ),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              child: Scaffold(
                backgroundColor: const Color(0xFFF2F2F2),
                body: IndexedStack(
                  index: controller.tabIndex.value,
                  children: [
                    const HomeNav(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: controller.tabIndex.value,
                  onTap: controller.changeTabIndex,
                  backgroundColor: const Color(0xFFF2F2F2),
                  type: BottomNavigationBarType.fixed,
                  showUnselectedLabels: false,
                  showSelectedLabels: false,
                  items: [
                    BottomNavigationBarItem(
                        icon: const Icon(Icons.home),
                        activeIcon: Image.asset(
                          'assets/icons/heroicons-solid_home.png',
                          height: 25,
                        ),
                        label: 'Home'),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/icons/heart.png',
                        height: 24,
                      ),
                      label: 'Favorite',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/icons/user.png',
                        height: 24,
                      ),
                      label: 'User',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/icons/ic_sharp-history.png',
                        height: 24,
                      ),
                      label: 'History',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
