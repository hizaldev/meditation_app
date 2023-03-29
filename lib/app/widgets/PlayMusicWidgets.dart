import 'package:flutter/material.dart';
import 'package:meditation_app/app/shared/theme.dart';

class PlayMusicWidgets extends StatelessWidget {
  final String? title;
  final String? duration;
  final String? active;

  const PlayMusicWidgets(
      {required this.title, required this.duration, this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: darkGrey,
            width: 0.2,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: active == 'active' ? purple : darkGrey,
              ),
              borderRadius: BorderRadius.circular(20),
              color: active == 'active' ? purple : Colors.transparent,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: active == 'active' ? Colors.white : darkGrey,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${title}',
                style: medium.copyWith(fontSize: 16),
              ),
              Text(
                '${duration}',
                style: medium.copyWith(
                  fontSize: 11,
                  color: darkGrey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
