import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offline_controller.dart';

class OfflineView extends GetView<OfflineController> {
  const OfflineView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Icon(
                size: 150.0,
                Icons.wifi_off,
                color: Color(0xFFBABABA),
              ),
            ),
            const Text(
              'No internet Connection',
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'SFProtextSemibold',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your internet connection is currently \nnot available please check or try again.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 14,
                fontFamily: 'SFProtext',
              ),
            ),
            Container(
              width: Get.width,
              margin: const EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                ),
                child: const Text(
                  'Try Again',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SFProtextSemibold',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
