import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/detail/views/widgets/info_widget.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';
import 'widgets/carousel_widget.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = controller.menuById();

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Carousel(),
                const SizedBox(
                  height: 15,
                ),
                InfoWidget(item: item),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.chevron_left,
                    ),
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.favorite_outline,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontFamily: 'SFProTextSemibold',
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
