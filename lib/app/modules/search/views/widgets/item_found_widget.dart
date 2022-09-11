import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/item_widget.dart';
import '../../controllers/search_controller.dart';

class ItemFound extends StatelessWidget {
  const ItemFound({Key? key, required this.controller}) : super(key: key);

  final SearchController controller;

  @override
  Widget build(BuildContext context) {
    List<ItemWidget> item = controller.item
        .map((e) => ItemWidget(
              id: e.id!,
              image: e.image!,
              name: e.name!,
              price: e.price!,
            ))
        .toList();

    return Container(
      height: Get.height,
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Found  ${item.length} results",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'SFProRoundedHeavy',
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GridView.builder(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: item.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) => Column(
              children: [
                if (index.isOdd)
                  const SizedBox(
                    height: 40,
                  ),
                Expanded(child: item[index]),
                if (index.isEven)
                  const SizedBox(
                    height: 40,
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
