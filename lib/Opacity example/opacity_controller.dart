import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class OpacityController extends GetxController {
  RxDouble opacity = .4.obs;
  setOpacity(double val) {
    opacity.value = val;
  }
}
