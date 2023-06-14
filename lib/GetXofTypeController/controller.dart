import 'package:get/get.dart';

class MyController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count.value = count.value + 1;
  }
}
