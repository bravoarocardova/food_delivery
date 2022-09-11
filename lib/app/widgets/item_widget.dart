import 'package:flutter/material.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:food_delivery/core/utils/number_format.dart';
import 'package:get/get.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.id,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  final String id;
  final String image;
  final String name;
  final int price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.DETAIL, arguments: {'id': id}),
      child: Container(
        width: 150,
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -30,
              left: 20,
              right: 20,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: const Offset(-2, 15),
                    ),
                  ],
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  image,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'SFProTextSemibold',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    CurrencyFormat.convertToIdr(price, 0),
                    style: TextStyle(
                      fontFamily: 'SFProTextSemibold',
                      fontSize: 14,
                      color: Get.theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
