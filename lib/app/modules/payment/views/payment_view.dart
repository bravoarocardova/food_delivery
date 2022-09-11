import 'package:flutter/material.dart';
import 'package:food_delivery/app/widgets/delivery_method_widget.dart';
import 'package:food_delivery/app/modules/payment/controllers/payment_controller.dart';
import 'package:food_delivery/app/widgets/payment_method_widget.dart';

import 'package:get/get.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
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
              'Payment',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'SFProTextSemibold',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            PaymentMethodWidget(),
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
              onPressed: () => Get.dialog(
                noteDialog(),
              ),
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

  AlertDialog noteDialog() {
    return AlertDialog(
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      title: Container(
        color: const Color(0xFFEDEDED),
        child: const Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'Please Note',
          ),
        ),
      ),
      titlePadding: const EdgeInsets.all(0),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Cancel",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Proceed",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivery to Mainland",
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          TextFormField(
            initialValue: 'N1000 - N2000',
            decoration: const InputDecoration(
              labelStyle: TextStyle(
                color: Color(0xFF000000),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF000000)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Delivery to island",
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          TextFormField(
            initialValue: 'N1000 - N2000',
            decoration: const InputDecoration(
              labelStyle: TextStyle(
                color: Color(0xFF000000),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF000000)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
