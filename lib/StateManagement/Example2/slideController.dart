import 'package:get/get.dart';

class slideController extends GetxController {
  RxDouble opacity = 0.4.obs;
  void updateOpacity(double value) {
    opacity.value = value;
  }
}
