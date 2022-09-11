import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);
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
          'Orders',
          style: TextStyle(fontFamily: 'SFProTextSemibold'),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 150,
                color: Color(0xFFC7C7C7),
              ),
            ),
            const Text(
              'No orders yet',
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'SFProtextSemibold',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Hit the orange button down\nbelow to Create an order',
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
    );
  }
}
