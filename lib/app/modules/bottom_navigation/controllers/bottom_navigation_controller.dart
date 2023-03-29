import 'dart:io';

import 'package:get/get.dart';
import 'package:meditation_app/app/modules/home/views/home_view.dart';
import 'package:meditation_app/app/modules/meditation/views/meditation_view.dart';
import 'package:meditation_app/app/modules/sleep/views/sleep_view.dart';

class BottomNavigationController extends GetxController {
  RxInt CurrentIndex = 0.obs;

  final screens = const [
    HomeView(),
    SleepView(),
    MeditationView(),
  ];

  SetIndex(index) {
    print(index);
    CurrentIndex.value = index;
    update();
  }
}
