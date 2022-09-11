import 'package:get/get.dart';

class UpdateProfileController extends GetxController {
  final List<String> paymentMethod = ["CARD", "BANK", "PAYPAL"];
  final paymentMethodSelected = "CARD".obs;
}
