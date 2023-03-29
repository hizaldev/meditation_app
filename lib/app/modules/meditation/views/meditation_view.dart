import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:meditation_app/app/shared/theme.dart';
import 'package:meditation_app/app/widgets/BannerPlayerWidgets.dart';
import 'package:meditation_app/app/widgets/CardStaggerdWidgets.dart';
import 'package:meditation_app/app/widgets/TabMeditationButtonWidgets.dart';

import '../controllers/meditation_controller.dart';

class MeditationView extends GetView<MeditationController> {
  const MeditationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meditate',
          style: bold.copyWith(fontSize: 28, color: Colors.black),
        ),
        backgroundColor: Colors.grey[50],
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Text(
                  'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
                  style: regular.copyWith(
                    fontSize: 16,
                    color: darkGrey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 35,
                )
              ],
            ),
          ),
          SizedBox(
            height: 95,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(
                  width: 20,
                ),
                TabMeditationButtonWidgets(
                  icons: 'assets/icons/ic_all.png',
                  label: 'All',
                  active: 'active',
                ),
                SizedBox(
                  width: 20,
                ),
                TabMeditationButtonWidgets(
                  icons: 'assets/icons/ic_like.png',
                  label: 'My',
                ),
                SizedBox(
                  width: 20,
                ),
                TabMeditationButtonWidgets(
                  icons: 'assets/icons/ic_like.png',
                  label: 'Anxious',
                ),
                SizedBox(
                  width: 20,
                ),
                TabMeditationButtonWidgets(
                  icons: 'assets/icons/ic_like.png',
                  label: 'Sleep',
                ),
                SizedBox(
                  width: 20,
                ),
                TabMeditationButtonWidgets(
                  icons: 'assets/icons/ic_like.png',
                  label: 'Kids',
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BannerPlayerWidgets(
              background: 'assets/images/banner_daily_calm.png',
              title: 'Daily Calm',
              subtitle: 'APR 30 . PAUSE PRACTICE',
              buttonColor: 'dark',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              children: const [
                CardStaggerdWidgets(
                  images: 'assets/images/seven_days_of_calm.png',
                  crossAxis: 1,
                  mainAxis: 1.2,
                  label: '7 Days of Calm',
                  colorLabel: Colors.white,
                ),
                CardStaggerdWidgets(
                  images: 'assets/images/anxient_release.png',
                  crossAxis: 1,
                  mainAxis: 1,
                  label: 'Anxient Release',
                  colorLabel: Colors.white,
                ),
                CardStaggerdWidgets(
                  images: 'assets/images/forest_banner.png',
                  crossAxis: 1,
                  mainAxis: 1.2,
                  label: 'Forest Ambient',
                  colorLabel: Colors.white,
                ),
                CardStaggerdWidgets(
                  images: 'assets/images/beach_banner.png',
                  crossAxis: 1,
                  mainAxis: 1,
                  label: 'Beach Ambient',
                  colorLabel: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
