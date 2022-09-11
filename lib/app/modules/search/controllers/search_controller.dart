import 'package:food_delivery/app/data/models/item_model.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  RxString searchValue = '${Get.arguments['s']}'.obs;
  RxList<ItemMenu> item = <ItemMenu>[].obs;

  RxList<ItemMenu> menuSearch(v) =>
      item.value = RxList<ItemMenu>.from(itemMenuSearch(v));
}
