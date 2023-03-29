import 'package:get/get.dart';

class MusicController extends GetxController {
  final RxDouble valuePlayer = 20.0.obs;

  updateValuePlayer(value) {
    valuePlayer.value = value;
    update();
  }

  decreaseMusic(value) {
    if (valuePlayer.value > value) {
      final currentValue = valuePlayer.value - value;
      valuePlayer.value = currentValue;
      update();
    }
  }

  increaseMusic(value) {
    if (valuePlayer.value < 2700) {
      final currentValue = valuePlayer.value + value;
      valuePlayer.value = currentValue;
      update();
    }
  }
}
