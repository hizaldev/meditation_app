import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:get/get.dart';
import 'package:meditation_app/app/routes/app_pages.dart';
import 'package:meditation_app/app/shared/theme.dart';
import 'package:meditation_app/app/widgets/ButtonWidgets.dart';

import '../controllers/reminders_controller.dart';

class RemindersView extends GetView<RemindersController> {
  const RemindersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            'What time would you\nlike to meditate?',
            style: bold.copyWith(
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Anytime you can choose but We recomend first thing in morning',
            style: regular.copyWith(
              fontSize: 20,
              color: darkGrey,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 212,
                      width: 40,
                      child: ListWheelScrollView(
                        itemExtent: 50,
                        children: controller.items,
                        useMagnifier: true,
                        physics: FixedExtentScrollPhysics(),
                        perspective: 0.01,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 212,
                      width: 40,
                      child: ListWheelScrollView(
                        itemExtent: 50,
                        children: controller.items,
                        useMagnifier: true,
                        physics: FixedExtentScrollPhysics(),
                        perspective: 0.01,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 212,
                      width: 50,
                      child: ListWheelScrollView(
                        itemExtent: 50,
                        children: [
                          Text(
                            'AM',
                            style: bold.copyWith(fontSize: 28),
                          ),
                          Text(
                            'PM',
                            style: bold.copyWith(fontSize: 28),
                          ),
                        ],
                        useMagnifier: true,
                        physics: FixedExtentScrollPhysics(),
                        perspective: 0.01,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Divider(),
                      SizedBox(
                        height: 25,
                      ),
                      Divider()
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Which day would you\nlike to meditate?',
            style: bold.copyWith(
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Everyday is best, but we recommend pickingat least five',
            style: regular.copyWith(
              fontSize: 20,
              color: darkGrey,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircullarDayWidgets(
                selected: '',
                borderColor: darkGrey,
                day: 'SU',
              ),
              CircullarDayWidgets(
                selected: '',
                borderColor: darkGrey,
                day: 'M',
              ),
              CircullarDayWidgets(
                selected: '',
                borderColor: darkGrey,
                day: 'T',
              ),
              CircullarDayWidgets(
                selected: '',
                borderColor: darkGrey,
                day: 'W',
              ),
              CircullarDayWidgets(
                selected: 'selected',
                borderColor: darkGrey,
                day: 'TH',
              ),
              CircullarDayWidgets(
                selected: 'selected',
                borderColor: darkGrey,
                day: 'F',
              ),
              CircullarDayWidgets(
                selected: '',
                borderColor: darkGrey,
                day: 'S',
              ),
            ],
          ),
          SizedBox(
            height: 57,
          ),
          GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.BOTTOM_NAVIGATION);
            },
            child: ButtonWidgets(
              label: 'SAVE',
              color: purple,
              labelColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'NO THANKS',
            style: medium.copyWith(fontSize: 14),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class CircullarDayWidgets extends StatelessWidget {
  final Color borderColor;
  final String? day;
  final String? selected;
  const CircullarDayWidgets({
    required this.borderColor,
    this.day,
    this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor),
        color: selected == 'selected' ? Colors.white : black,
      ),
      child: Center(
        child: Text(
          '${day}',
          style: medium.copyWith(
            fontSize: 13,
            color: selected == 'selected' ? black : Colors.white,
          ),
        ),
      ),
    );
  }
}
