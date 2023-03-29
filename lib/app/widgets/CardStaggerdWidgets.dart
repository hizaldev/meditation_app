import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:meditation_app/app/routes/app_pages.dart';
import 'package:meditation_app/app/shared/theme.dart';

class CardStaggerdWidgets extends StatelessWidget {
  final int crossAxis;
  final double mainAxis;
  final String images;
  final String label;
  final Color? colorLabel;

  const CardStaggerdWidgets({
    required this.crossAxis,
    required this.mainAxis,
    required this.images,
    required this.label,
    this.colorLabel,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxis,
      mainAxisCellCount: mainAxis,
      child: GestureDetector(
        onTap: () {
          Get.offAllNamed(Routes.REMINDERS);
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(images),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '${label}',
                  style: bold.copyWith(fontSize: 18, color: colorLabel),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
