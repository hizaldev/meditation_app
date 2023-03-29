import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/app/shared/theme.dart';

class CourseDetailController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController controller;

  final List<Tab> myTabs = const [
    Tab(
      text: 'MALE VOICE',
    ),
    Tab(
      text: 'FEMALE VOICE',
    ),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    controller = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    controller.dispose();
    super.onClose();
  }
}
