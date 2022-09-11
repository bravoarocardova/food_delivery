import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/detail/controllers/detail_controller.dart';
import 'package:get/get.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DetailController>();

    final List<String> imgList = [
      controller.menuById().image.toString(),
      controller.menuById().image.toString(),
      controller.menuById().image.toString(),
      controller.menuById().image.toString(),
      controller.menuById().image.toString(),
    ];

    final imageListCarousel = imgList
        .map(
          (img) => Container(
            margin: const EdgeInsets.all(20),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: const Offset(-2, 10),
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              img,
              fit: BoxFit.contain,
            ),
          ),
        )
        .toList();

    var indicatorCarouselImg = imgList
        .asMap()
        .entries
        .map(
          (e) => GestureDetector(
            onTap: () => controller.carouselController.animateToPage(e.key),
            child: Obx(
              () => Container(
                width: 10.0,
                height: 10.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (controller.currentCarousel.value == e.key)
                      ? Get.theme.colorScheme.primary
                      : const Color(0xFFC4C4C4),
                ),
              ),
            ),
          ),
        )
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageListCarousel,
          options: CarouselOptions(
              initialPage: controller.currentCarousel.value,
              onPageChanged: (index, reason) {
                controller.currentCarousel.value = index;
              }),
          carouselController: controller.carouselController,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: indicatorCarouselImg,
        )
      ],
    );
  }
}
