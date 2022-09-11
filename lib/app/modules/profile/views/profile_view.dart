import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/profile/views/widgets/personal_info_widget.dart';
import 'package:food_delivery/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';
import 'widgets/item_profile_widget.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const Text(
              'My Profile',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'SFProTextSemibold',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const PersonalInfoWidget(),
            const SizedBox(
              height: 20,
            ),
            ItemProfileWidget(
              title: 'Orders',
              ontap: () => Get.toNamed(Routes.ORDER),
            ),
            ItemProfileWidget(
              title: 'Pending Reviews',
              ontap: () => {},
            ),
            ItemProfileWidget(
              title: 'Faq',
              ontap: () => {},
            ),
            ItemProfileWidget(
              title: 'Help',
              ontap: () => {},
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.UPDATE_PROFILE),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              child: const Text(
                'Update',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
