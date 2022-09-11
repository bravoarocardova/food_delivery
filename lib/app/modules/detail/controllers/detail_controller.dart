import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_delivery/app/data/models/item_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  final currentCarousel = 0.obs;
  CarouselController carouselController = CarouselController();

  ItemMenu menuById() => itemMenuById(Get.arguments['id'])[0];
}
