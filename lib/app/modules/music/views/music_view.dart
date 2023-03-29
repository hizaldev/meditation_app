import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation_app/app/shared/theme.dart';
import 'package:meditation_app/app/widgets/ButtonAppBarWidgets.dart';

import '../controllers/music_controller.dart';

class MusicView extends GetView<MusicController> {
  const MusicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_music.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ButtonAppBarWidgets(
                  icons: 'assets/icons/ic_back.png',
                  color: Colors.white,
                ),
                Row(
                  children: const [
                    ButtonAppBarWidgets(
                      icons: 'assets/icons/ic_like.png',
                      color: darkGrey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ButtonAppBarWidgets(
                      icons: 'assets/icons/ic_download.png',
                      color: darkGrey,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 280,
            ),
            Text(
              'Focus Attention',
              style: bold.copyWith(fontSize: 34),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '7 DAYS OF CALM',
              style: medium.copyWith(
                fontSize: 14,
                color: darkGrey,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => controller.decreaseMusic(15),
                  child: Container(
                    height: 39,
                    width: 39,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/ic_rewind.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 110,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: grey,
                    borderRadius: BorderRadius.circular(110 / 2),
                  ),
                  child: Container(
                    height: 86,
                    width: 86,
                    decoration: BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.circular(86 / 2),
                    ),
                    child: const Icon(
                      Icons.pause_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.increaseMusic(15),
                  child: Container(
                    height: 39,
                    width: 39,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/ic_forward.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Obx(
              () => Slider(
                value: controller.valuePlayer.value,
                max: 2700,
                activeColor: black,
                inactiveColor: darkGrey,
                onChanged: (value) {
                  controller.updateValuePlayer(value);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '01:30',
                  style: medium.copyWith(fontSize: 16),
                ),
                Text(
                  '45:00',
                  style: medium.copyWith(fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
