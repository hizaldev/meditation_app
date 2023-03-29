import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation_app/app/routes/app_pages.dart';
import 'package:meditation_app/app/shared/theme.dart';
import 'package:meditation_app/app/widgets/ButtonWidgets.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          Container(
            height: 530,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Frame_signup.png'),
                  fit: BoxFit.cover,
                  scale: 2),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 30,
                  width: 168,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/logo_dark.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  height: 242,
                  width: 332,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/signup_images.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'We are what we do',
            style: bold.copyWith(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Thousand of people are using silent moon\nfor small meditations',
            style: regular.copyWith(
              fontSize: 16,
              color: darkGrey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 62,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Routes.FORM_SIGNUP;
              },
              child: ButtonWidgets(
                label: 'SIGN UP',
                labelColor: Colors.white,
                color: purple,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ALREADY HAVE AN ACCOUNT?',
                style: medium.copyWith(
                  fontSize: 14,
                  color: darkGrey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.SIGNIN);
                },
                child: Text(
                  ' LOG IN',
                  style: medium.copyWith(fontSize: 14, color: purple),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
