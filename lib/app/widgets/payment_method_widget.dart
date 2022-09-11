import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/update_profile/controllers/update_profile_controller.dart';
import 'package:get/get.dart';

class PaymentMethodWidget extends StatelessWidget {
  PaymentMethodWidget({Key? key}) : super(key: key);

  final controller =
      Get.put<UpdateProfileController>(UpdateProfileController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Payment Method',
          style: TextStyle(
            fontFamily: 'SFProTextSemibold',
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              paymentItem(
                value: controller.paymentMethod[0],
                title: "Card",
                image: 'assets/icons/bi_credit-card-2-front-fill.png',
                color: const Color(0xFFF47B0A),
                divider: true,
              ),
              paymentItem(
                value: controller.paymentMethod[1],
                title: "Bank Account",
                image: 'assets/icons/dashicons_bank.png',
                color: const Color(0xFFEB4796),
                divider: true,
              ),
              paymentItem(
                value: controller.paymentMethod[2],
                title: "Paypal",
                image: 'assets/icons/cib_paypal.png',
                color: const Color(0xFF0038FF),
              ),
            ],
          ),
        )
      ],
    );
  }

  ListTile paymentItem(
      {required String value,
      required String title,
      required String image,
      required Color color,
      bool divider = false}) {
    return ListTile(
      onTap: () => controller.paymentMethodSelected.value = value,
      leading: Obx(() => Radio(
            value: value,
            groupValue: controller.paymentMethodSelected.value,
            onChanged: (value) => {
              controller.paymentMethodSelected.value = value.toString(),
            },
          )),
      title: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: divider
              ? const Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  ),
                )
              : const Border(),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 20,
                height: 20,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
