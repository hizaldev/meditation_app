import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation_app/app/shared/theme.dart';

import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  const BottomNavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: controller.screens[controller.CurrentIndex.value],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedIconTheme: const IconThemeData(color: purple),
          selectedItemColor: purple,
          unselectedLabelStyle: medium.copyWith(fontSize: 14),
          unselectedItemColor: darkGrey,
          showUnselectedLabels: true,
          currentIndex: controller.CurrentIndex.value,
          onTap: (index) => controller.SetIndex(index),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: controller.CurrentIndex.value == 0
                      ? purple
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 0
                          ? 'assets/icons/ic_home_active.png'
                          : 'assets/icons/ic_home.png'),
                      scale: 2,
                    ),
                  ),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: controller.CurrentIndex.value == 1
                      ? purple
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 1
                          ? 'assets/icons/ic_sleep_active.png'
                          : 'assets/icons/ic_sleep.png'),
                      scale: 2,
                    ),
                  ),
                ),
              ),
              label: 'Sleep',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: controller.CurrentIndex.value == 2
                      ? purple
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 2
                          ? 'assets/icons/ic_meditate_active.png'
                          : 'assets/icons/ic_meditate.png'),
                      scale: 2,
                    ),
                  ),
                ),
              ),
              label: 'Meditation',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: controller.CurrentIndex.value == 3
                      ? purple
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 3
                          ? 'assets/icons/ic_music_active.png'
                          : 'assets/icons/ic_music.png'),
                      scale: 2,
                    ),
                  ),
                ),
              ),
              label: 'Music',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: controller.CurrentIndex.value == 4
                      ? purple
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 4
                          ? 'assets/icons/ic_user_active.png'
                          : 'assets/icons/ic_user.png'),
                      scale: 2,
                    ),
                  ),
                ),
              ),
              label: 'Hizal',
            ),
          ],
        ),
      ),
    );
  }
}
