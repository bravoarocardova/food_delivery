import 'package:flutter/material.dart';
import 'package:food_delivery/app/data/models/item_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxDouble xOffsetV = 0.0.obs;
  RxDouble yOffsetV = 0.0.obs;
  RxDouble scaleFactor = 1.0.obs;

  RxBool isDrawerOpenV = false.obs;

  void openDrawer() {
    xOffsetV.value = 240.0;
    yOffsetV.value = 150.0;
    scaleFactor.value = 0.6;
    isDrawerOpenV.value = true;
  }

  closeDrawer() {
    xOffsetV.value = 0.0;
    yOffsetV.value = 0.0;
    scaleFactor.value = 1;
    isDrawerOpenV.value = false;
  }

  Rx<int> tabIndex = 0.obs;
  final List<Tab> myTabs = [
    const Tab(
      text: 'Foods',
    ),
    const Tab(
      text: 'Drinks',
    ),
    const Tab(
      text: 'Snacks',
    ),
    const Tab(
      text: 'Sauces',
    ),
  ];

  late TabController tabController;

  List<ItemMenu> get menuFoods => itemMenuFoods;
  List<ItemMenu> get menuDrinks => itemMenuDrinks;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();

    tabController = TabController(
      length: myTabs.length,
      vsync: this,
    );
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
