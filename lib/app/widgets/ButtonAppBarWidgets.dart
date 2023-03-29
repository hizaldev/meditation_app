import 'package:flutter/material.dart';

class ButtonAppBarWidgets extends StatelessWidget {
  final String? icons;
  final Color? color;
  const ButtonAppBarWidgets({required this.icons, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      child: Center(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: color,
          ),
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('${icons}'), scale: 2),
            ),
          ),
        ),
      ),
    );
  }
}
