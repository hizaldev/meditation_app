import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:meditation_app/app/routes/app_pages.dart';
import 'package:meditation_app/app/shared/theme.dart';
import 'package:meditation_app/app/widgets/CardStaggerdWidgets.dart';
import '../controllers/topic_controller.dart';

class TopicView extends GetView<TopicController> {
  const TopicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            'What Brings You',
            style: bold.copyWith(
              fontSize: 28,
            ),
          ),
          Text(
            'to Silent Moon?',
            style: regular.copyWith(
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'choose a topic to focuse on:',
            style: regular.copyWith(
              fontSize: 20,
              color: darkGrey,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
            children: const [
              CardStaggerdWidgets(
                images: 'assets/images/reduce_stress.png',
                crossAxis: 1,
                mainAxis: 1.2,
                label: 'Reduce Stress',
                colorLabel: Colors.white,
              ),
              CardStaggerdWidgets(
                images: 'assets/images/improve_performance.png',
                crossAxis: 1,
                mainAxis: 1,
                label: 'Improve Performance',
                colorLabel: Colors.white,
              ),
              CardStaggerdWidgets(
                images: 'assets/images/anxiety.png',
                crossAxis: 1,
                mainAxis: 1.2,
                label: 'Reduce anxiety',
              ),
              CardStaggerdWidgets(
                images: 'assets/images/increase_hapiness.png',
                crossAxis: 1,
                mainAxis: 1,
                label: 'Increase\nHappiness',
              ),
              CardStaggerdWidgets(
                images: 'assets/images/personal_growth.png',
                crossAxis: 1,
                mainAxis: 1.2,
                label: 'Personal\nGrowth',
                colorLabel: Colors.white,
              ),
              CardStaggerdWidgets(
                images: 'assets/images/better_sleep.png',
                crossAxis: 1,
                mainAxis: 1,
                label: 'Better Sleep',
                colorLabel: Colors.white,
              ),
              CardStaggerdWidgets(
                images: 'assets/images/Improve_learning.png',
                crossAxis: 1,
                mainAxis: 1.2,
                label: 'Improve Learning',
                colorLabel: Colors.white,
              ),
              CardStaggerdWidgets(
                images: 'assets/images/reduce_stress.png',
                crossAxis: 1,
                mainAxis: 1,
                label: 'Improve Concerntration',
                colorLabel: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
