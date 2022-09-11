import 'package:flutter/material.dart';
import 'package:food_delivery/app/data/models/item_model.dart';
import 'package:food_delivery/core/utils/number_format.dart';
import 'package:get/get.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key, required this.item}) : super(key: key);
  final ItemMenu item;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            item.name!,
            maxLines: 2,
            style: const TextStyle(
              fontFamily: 'SFProTextSemibold',
              fontSize: 24,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            CurrencyFormat.convertToIdr(item.price, 0),
            style: TextStyle(
              fontFamily: 'SFProTextSemibold',
              fontSize: 18,
              color: Get.theme.colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Delivery Info',
            style: TextStyle(
              fontFamily: 'SFProTextSemibold',
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            item.deliveryInfo!,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontFamily: 'SFProText',
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Return Policy',
            style: TextStyle(
              fontFamily: 'SFProTextSemibold',
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            item.returnPolicy!,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontFamily: 'SFProText',
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
