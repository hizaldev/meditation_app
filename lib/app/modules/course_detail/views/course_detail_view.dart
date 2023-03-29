import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/app/modules/meditation/views/meditation_view.dart';
import 'package:meditation_app/app/routes/app_pages.dart';
import 'package:meditation_app/app/shared/theme.dart';
import 'package:meditation_app/app/widgets/ButtonAppBarWidgets.dart';
import 'package:meditation_app/app/widgets/PlayMusicWidgets.dart';
import '../controllers/course_detail_controller.dart';

class CourseDetailView extends GetView<CourseDetailController> {
  const CourseDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: purple,
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(45),
              ),
            ),
            leadingWidth: 75,
            leading: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: ButtonAppBarWidgets(
                    icons: 'assets/icons/ic_back.png',
                    color: grey,
                  ),
                ),
              ],
            ),
            actions: [
              ButtonAppBarWidgets(
                icons: 'assets/icons/ic_like.png',
                color: black.withOpacity(0.6),
              ),
              const SizedBox(
                width: 15,
              ),
              ButtonAppBarWidgets(
                icons: 'assets/icons/ic_download.png',
                color: black.withOpacity(0.6),
              ),
              const SizedBox(
                width: 20,
              )
            ],
            expandedHeight: 288,
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20.0),
              ),
              child: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/background_course.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Happy Morning',
                    style: bold.copyWith(fontSize: 34),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'COURSE',
                    style: medium.copyWith(
                      fontSize: 14,
                      color: darkGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ease the mind into a restful night\'s sleep with these deep, amblent tones.',
                    style: regular.copyWith(fontSize: 16, color: darkGrey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/icons/ic_favorites.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '24.234 Favorits',
                            style: medium.copyWith(
                              fontSize: 14,
                              color: darkGrey,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/icons/ic_listening.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '34.234 Listening',
                            style: medium.copyWith(
                              fontSize: 14,
                              color: darkGrey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Pick Narator',
                    style: bold.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TabBar(
                    controller: controller.controller,
                    tabs: controller.myTabs,
                    indicatorColor: purple,
                    indicatorWeight: 5,
                    labelColor: purple,
                    unselectedLabelColor: darkGrey,
                    labelStyle: bold.copyWith(fontSize: 16),
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 60),
                  ),
                  const Divider(),
                  SizedBox(
                    height: Get.height,
                    child: TabBarView(
                      controller: controller.controller,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.MUSIC);
                              },
                              child: const PlayMusicWidgets(
                                title: 'Focus Attention',
                                duration: '10 MIN',
                                active: 'active',
                              ),
                            ),
                            const PlayMusicWidgets(
                              title: 'Body Scan',
                              duration: '10 MIN',
                              active: '',
                            ),
                            const PlayMusicWidgets(
                              title: 'Making Happiness',
                              duration: '10 MIN',
                              active: '',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.MUSIC);
                              },
                              child: const PlayMusicWidgets(
                                title: 'Focus Attention',
                                duration: '10 MIN',
                                active: 'active',
                              ),
                            ),
                            const PlayMusicWidgets(
                              title: 'Body Scan',
                              duration: '10 MIN',
                              active: '',
                            ),
                            const PlayMusicWidgets(
                              title: 'Making Happiness',
                              duration: '10 MIN',
                              active: '',
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
