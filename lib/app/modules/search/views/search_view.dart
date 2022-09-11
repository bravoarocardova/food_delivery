import 'package:flutter/material.dart';
import 'package:food_delivery/app/widgets/item_widget.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';
import 'widgets/item_found_widget.dart';
import 'widgets/not_found_widget.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.menuSearch(controller.searchValue.value);
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
        title: Obx(() => TextFormField(
              initialValue: controller.searchValue.value,
              onFieldSubmitted: (v) => controller.menuSearch(v),
              style: const TextStyle(
                fontFamily: 'SFProTextBold',
                fontSize: 18,
              ),
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Obx(
        () => controller.item.isEmpty
            ? const NotFound()
            : ItemFound(
                controller: controller,
              ),
      ),
    );
  }
}
