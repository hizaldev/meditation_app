import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/app/shared/theme.dart';

class ButtonIconsWidget extends StatelessWidget {
  final String? label;
  final String? icon;
  final Color? color;
  final Color borderColor;
  final Color? textColor;
  const ButtonIconsWidget({
    this.label,
    this.icon,
    this.color,
    required this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        border: Border.all(
          color: borderColor,
        ),
        color: color,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 22,
            left: 30,
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/${icon}'),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                '${label}',
                style: medium.copyWith(fontSize: 14, color: textColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
