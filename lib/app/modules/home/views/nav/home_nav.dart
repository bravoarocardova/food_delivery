import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/home/controllers/home_controller.dart';
import 'package:food_delivery/app/modules/home/views/nav/category_tabs.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeNav extends StatelessWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF2F2F2),
        leading: Obx(
          () => controller.isDrawerOpenV.value
              ? IconButton(
                  onPressed: () => controller.closeDrawer(),
                  icon: const Icon(
                    Icons.chevron_left_outlined,
                    color: Colors.black,
                  ),
                )
              : IconButton(
                  onPressed: () => controller.openDrawer(),
                  icon: Image.asset('assets/icons/hamburger.png'),
                ),
        ),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.CART),
            icon: Image.asset('assets/icons/shopping-cart.png'),
          )
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Delicios\nfood for you',
              style: TextStyle(
                fontFamily: 'SFProRounded',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              initialValue: 'veggie',
              onFieldSubmitted: (value) => Get.toNamed(
                Routes.SEARCH,
                arguments: {'s': value},
              ),
              style: const TextStyle(
                fontFamily: 'SFProTextBold',
                fontSize: 18,
              ),
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Image.asset('assets/icons/search.png'),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xFFEFEEEE),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TabBar(
            indicatorColor: Get.theme.colorScheme.primary,
            labelColor: Get.theme.colorScheme.primary,
            labelStyle: const TextStyle(fontFamily: 'SFProText'),
            unselectedLabelColor: const Color(0xFF9A9A9D),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            controller: controller.tabController,
            tabs: controller.myTabs,
          ),
          SizedBox(
            height: 400,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.tabController,
              children: [
                CategoriTabs(
                  item: controller.menuFoods,
                ),
                CategoriTabs(
                  item: controller.menuDrinks,
                ),
                CategoriTabs(
                  item: controller.menuFoods,
                ),
                CategoriTabs(
                  item: controller.menuDrinks,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
