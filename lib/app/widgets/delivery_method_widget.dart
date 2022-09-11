import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/delivery/controllers/delivery_controller.dart';
import 'package:get/get.dart';

class DeliveryMethodWidget extends StatelessWidget {
  DeliveryMethodWidget({Key? key}) : super(key: key);

  final controller = Get.find<DeliveryController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Delivery method.',
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
              deliveryMethod(
                value: controller.deliveryMethod[0],
                title: controller.deliveryMethod[0],
                color: const Color(0xFFF47B0A),
                divider: true,
              ),
              deliveryMethod(
                value: controller.deliveryMethod[1],
                title: controller.deliveryMethod[1],
                color: const Color(0xFFEB4796),
                // divider: true,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget deliveryMethod(
      {required String value,
      required String title,
      required Color color,
      bool divider = false}) {
    return ListTile(
      onTap: () => controller.deliveryMethodSelected.value = value,
      leading: Obx(() => Radio(
            value: value,
            groupValue: controller.deliveryMethodSelected.value,
            onChanged: (value) => {
              controller.deliveryMethodSelected.value = value.toString(),
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
        child: Text(title),
      ),
    );
  }
}
