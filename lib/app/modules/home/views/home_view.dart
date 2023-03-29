import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:meditation_app/app/routes/app_pages.dart';
import 'package:meditation_app/app/shared/theme.dart';
import 'package:meditation_app/app/widgets/BannerPlayerWidgets.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 30,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icons/logo_dark.png'))),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning, Hizal',
                style: bold.copyWith(
                  fontSize: 28,
                ),
              ),
              Text(
                'We wish you have a good day',
                style: regular.copyWith(fontSize: 20, color: darkGrey),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.COURSE_DETAIL),
                    child: Container(
                      height: 210,
                      width: 177,
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/basic_course.png'),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '3-10 MIN',
                                style: medium.copyWith(
                                    fontSize: 11, color: Colors.white),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Text(
                                  'START',
                                  style: medium.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 210,
                    width: 177,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/relaxation_music.png'),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '3-10 MIN',
                              style: medium.copyWith(
                                fontSize: 11,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: black,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Text(
                                'START',
                                style: medium.copyWith(
                                    fontSize: 12, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              BannerPlayerWidgets(
                background: 'assets/images/banner_daily_thought.png',
                title: 'Daily Thought',
                subtitle: 'MEDITATION . 3-10 MIN',
                buttonColor: 'light',
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Recommended for you',
                style: medium.copyWith(fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 161,
            width: Get.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                CardRecommendWisgets(
                  images: 'assets/images/focus_banner.png',
                  title: 'Focus',
                  subtitle: 'MEDITATION 3-10 MIN',
                ),
                const SizedBox(
                  width: 20,
                ),
                CardRecommendWisgets(
                  images: 'assets/images/happiness_banner.png',
                  title: 'Happiness',
                  subtitle: 'MEDITATION 3-10 MIN',
                ),
                const SizedBox(
                  width: 20,
                ),
                CardRecommendWisgets(
                  images: 'assets/images/focus_banner.png',
                  title: 'Focus',
                  subtitle: 'MEDITATION 3-10 MIN',
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class CardRecommendWisgets extends StatelessWidget {
  final String? images;
  final String? title;
  final String? subtitle;
  const CardRecommendWisgets({
    required this.images,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 114,
          width: 162,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('${images}'),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '${title}',
          style: bold.copyWith(
            fontSize: 18,
          ),
        ),
        Text(
          '${subtitle}',
          style: medium.copyWith(
            fontSize: 11,
            color: darkGrey,
          ),
        )
      ],
    );
  }
}
