import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_delivery/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import 'widgets/list_item_widget.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

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
          'Cart',
          style: TextStyle(fontFamily: 'SFProTextSemibold'),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 20,
            right: 20,
            top: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  infoSwipe(),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, i) {
                        return Slidable(
                          endActionPane: ActionPane(
                            extentRatio: 0.3,
                            motion: const BehindMotion(),
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => {},
                                  child: Container(
                                    height: Get.height,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFDF2C2C),
                                    ),
                                    child: const Icon(
                                      Icons.favorite_border_outlined,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFDF2C2C),
                                    ),
                                    child: Container(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          child: const ListItemWidget(),
                        );
                      }),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () => Get.toNamed(Routes.DELIVERY),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              child: const Text(
                'Complete order',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row infoSwipe() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/icons/iwwa_swipe.png'),
        const SizedBox(
          width: 10,
        ),
        const Text('swipe on an item to delete'),
      ],
    );
  }
}
