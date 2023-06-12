// ignore_for_file: invalid_use_of_protected_member

import 'package:get/get.dart';

class cardController extends GetxController {
  RxList<String> name = ["Apple", "Orange", "Bnana", "Grapes"].obs;
  RxList<bool> checkbox = [false, false, false, false].obs;

  void updateCheckBox(int index, bool value) {
    checkbox.value[index] = !checkbox.value[index];
    checkbox.refresh();
    print(checkbox.value[index]);
  }
}
