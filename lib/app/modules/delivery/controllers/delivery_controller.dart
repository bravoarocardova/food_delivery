import 'package:get/get.dart';

class DeliveryController extends GetxController {
  final List<String> deliveryMethod = [
    "Door delivery",
    "Pick up",
  ];
  final deliveryMethodSelected = "Door delivery".obs;
}
