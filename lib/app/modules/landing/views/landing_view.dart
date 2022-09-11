import 'package:flutter/material.dart';
import 'package:food_delivery/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF4B3A),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/Group67.png',
              ),
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30, top: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                width: 73,
                height: 73,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Food for\nEveryone",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SFProRoundedHeavy',
                    fontSize: 55,
                    height: 0.86,
                    letterSpacing: -3 / 100,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: Get.width,
                margin: const EdgeInsets.all(30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                      horizontal: 104,
                    ),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () => Get.offAllNamed(Routes.LOGIN),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontFamily: 'SFProTextSemibold',
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
