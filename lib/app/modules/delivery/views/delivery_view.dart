import 'package:flutter/material.dart';
import 'package:food_delivery/app/widgets/delivery_method_widget.dart';
import 'package:food_delivery/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/delivery_controller.dart';
import 'widgets/address_detail_widget.dart';

class DeliveryView extends GetView<DeliveryController> {
  const DeliveryView({Key? key}) : super(key: key);
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
        title: const Text(
          'Checkout',
          style: TextStyle(fontFamily: 'SFProTextSemibold'),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const Text(
              'Delivery',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'SFProTextSemibold',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const AddressDetail(),
            const SizedBox(
              height: 20,
            ),
            DeliveryMethodWidget(),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SFProText',
                  ),
                ),
                Text(
                  '23,000',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SFProTextSemibold',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.PAYMENT),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              child: const Text(
                'Proceed to payment',
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
