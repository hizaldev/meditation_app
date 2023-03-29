import 'package:flutter/material.dart';
import 'package:meditation_app/app/shared/theme.dart';

class TabMeditationButtonWidgets extends StatelessWidget {
  final String? icons;
  final String? label;
  final String? active;
  const TabMeditationButtonWidgets({
    required this.icons,
    required this.label,
    this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            color: active == 'active' ? purple : darkGrey,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('${icons}'),
                scale: 2,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '${label}',
          style: medium.copyWith(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
