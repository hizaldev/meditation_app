import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meditation_app/app/routes/app_pages.dart';
import 'package:meditation_app/app/shared/theme.dart';
import 'package:meditation_app/app/widgets/ButtonIconsWidget.dart';
import 'package:meditation_app/app/widgets/ButtonWidgets.dart';

import '../controllers/form_signup_controller.dart';

class FormSignupView extends GetView<FormSignupController> {
  const FormSignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 315,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/background_form_sign.png',
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (() {
                      Get.back();
                    }),
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.5),
                        border: Border.all(color: grey),
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Welcome Back!',
                style: bold.copyWith(fontSize: 28),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 33,
              ),
              const ButtonIconsWidget(
                label: 'CONTINUE WITH FACEBOOK',
                borderColor: purple,
                color: darkPurple,
                textColor: Colors.white,
                icon: 'logo_facebook.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const ButtonIconsWidget(
                label: 'CONTINUE WITH GOOGLE',
                icon: 'logo_google.png',
                borderColor: darkGrey,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'OR LOG IN WITH EMAIL',
                style: bold.copyWith(
                  fontSize: 14,
                  color: darkGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 8, bottom: 8),
                decoration: BoxDecoration(
                    color: grey, borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'User Name',
                    hintStyle: regular.copyWith(
                      fontSize: 16,
                      color: darkGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 8, bottom: 8),
                decoration: BoxDecoration(
                    color: grey, borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email Address',
                    hintStyle: regular.copyWith(
                      fontSize: 16,
                      color: darkGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 8, bottom: 8),
                decoration: BoxDecoration(
                    color: grey, borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  autocorrect: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: regular.copyWith(
                      fontSize: 16,
                      color: darkGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'I have read the',
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
                          ' Privacy Policy',
                          style: medium.copyWith(fontSize: 14, color: purple),
                        ),
                      )
                    ],
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.selected.value,
                      activeColor: purple,
                      focusColor: purple,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (value) {
                        controller.updateValye(value);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              GestureDetector(
                onTap: (() {
                  Get.offAllNamed(Routes.WELCOME);
                }),
                child: const ButtonWidgets(
                  color: purple,
                  label: 'GET STARTED',
                  labelColor: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
