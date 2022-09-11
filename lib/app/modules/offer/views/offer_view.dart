import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_controller.dart';

class OfferView extends GetView<OfferController> {
  const OfferView({Key? key}) : super(key: key);
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
          shrinkWrap: true,
          children: [
            const Text(
              'My offers',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'SFProTextSemibold',
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: Get.height * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'ohh snap!  No offers yet',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'SFProtextSemibold',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Bella dose’t have any offers\nyet please check again.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 14,
                          fontFamily: 'SFProtext',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
