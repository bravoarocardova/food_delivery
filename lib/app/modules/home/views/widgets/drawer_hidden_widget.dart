import 'package:flutter/material.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class DrawerHiddenWidget extends StatelessWidget {
  const DrawerHiddenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Card(
      color: Get.theme.colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DrawerItem(
                    preffixIcon: Icons.person_pin,
                    title: 'Profile',
                    hasDivider: true,
                    ontap: () => {
                      controller.closeDrawer(),
                      Get.toNamed(Routes.PROFILE),
                    },
                  ),
                  DrawerItem(
                    preffixIcon: Icons.shopping_cart_checkout,
                    title: 'orders',
                    hasDivider: true,
                    ontap: () => {
                      controller.closeDrawer(),
                      Get.toNamed(Routes.ORDER),
                    },
                  ),
                  DrawerItem(
                    preffixIcon: Icons.local_offer_outlined,
                    title: 'offer and promo',
                    hasDivider: true,
                    ontap: () => {
                      controller.closeDrawer(),
                      Get.toNamed(Routes.OFFER),
                    },
                  ),
                  DrawerItem(
                    preffixIcon: Icons.library_books_outlined,
                    title: 'Privacy Policy',
                    hasDivider: true,
                    ontap: () => {},
                  ),
                  DrawerItem(
                    preffixIcon: Icons.shield_outlined,
                    title: 'Security',
                    hasDivider: false,
                    ontap: () => {},
                  ),
                ],
              ),
            ),
          ),
          DrawerItem(
            suffixIcon: Icons.arrow_right_alt_outlined,
            title: 'Sign-Out',
            hasDivider: false,
            ontap: () => Get.offAllNamed(Routes.LANDING),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key,
      this.preffixIcon,
      this.suffixIcon,
      required this.title,
      required this.hasDivider,
      required this.ontap})
      : super(key: key);

  final IconData? preffixIcon;
  final IconData? suffixIcon;
  final String title;
  final bool hasDivider;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: (preffixIcon != null)
          ? Icon(
              preffixIcon,
              color: Colors.white,
            )
          : null,
      title: Container(
        decoration: BoxDecoration(
          border: (hasDivider)
              ? const Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.white,
                  ),
                )
              : const Border(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  if (suffixIcon != null)
                    Icon(
                      suffixIcon,
                      color: Colors.white,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: ontap,
    );
  }
}
