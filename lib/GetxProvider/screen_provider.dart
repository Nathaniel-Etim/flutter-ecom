
import 'package:get/get.dart';
//


class ScreenNavigationProvider extends GetxController {
var  selectedIndex = 0.obs;

int get selectedIndexGet => selectedIndex.value ;


selectedIndexFn(int index) {
    selectedIndex.value = index;
}

}
