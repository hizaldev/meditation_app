import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation_app/app/routes/app_pages.dart';
import 'package:meditation_app/app/shared/theme.dart';
import 'package:meditation_app/app/widgets/ButtonWidgets.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: purple,
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Container(
                height: 30,
                width: 168,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/logo_light.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            Text(
              'Hi Afsar, Welcome',
              style: bold.copyWith(fontSize: 30, color: lightYellow),
            ),
            Text(
              'to Silent Moon',
              style: regular.copyWith(fontSize: 30, color: lightYellow),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              height: 310,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/meditation.png'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Get.offAllNamed(Routes.TOPIC);
                },
                child: ButtonWidgets(
                  label: 'GET STARTED',
                  labelColor: Colors.black,
                  color: grey,
                ),
              ),
            )
          ],
        ));
  }
}
