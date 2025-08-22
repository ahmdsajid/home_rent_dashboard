import 'package:get/get.dart';

class MenuControllerX extends GetxController {
  // reactive integer to hold the selected index
  var selectedIndex = 0.obs;

  // method to update selected index
  void changePage(int index) {
    selectedIndex.value = index;
  }
}
