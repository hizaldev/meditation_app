import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/app/shared/theme.dart';

class ButtonWidgets extends StatelessWidget {
  final String? label;
  final Color? labelColor;
  final Color? color;
  const ButtonWidgets({
    this.label,
    this.color,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 25),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(38), color: color),
      child: Center(
        child: Text(
          '${label}',
          style: medium.copyWith(fontSize: 14, color: labelColor),
        ),
      ),
    );
  }
}
