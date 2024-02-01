import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mapp/custom/border_box.dart';
import 'package:mapp/util/constants.dart';

class CalendarContent extends StatefulWidget {
  const CalendarContent({super.key});

  @override
  State<CalendarContent> createState() => _CalendarContentState();
}

class _CalendarContentState extends State<CalendarContent> {
  int selectedIndex = 0;
  DateTime now = DateTime.now();
  late DateTime lastDayOfMonth;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lastDayOfMonth = DateTime(now.year, now.month + 1, 0);  
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(lastDayOfMonth.day, (index) {
          final currentDate = lastDayOfMonth.add(Duration(
            days: index + 1,
          ));

          final dayName = DateFormat('E').format(currentDate);
          final day = DateFormat('d').format(currentDate);

          return Padding(
            padding:
                EdgeInsets.only(left: index == 0 ? 16.0 : 0.0, right: 16.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: BorderBox(
                color: COLOR_WHITE,
                borderRadius: 15,
                isElevated: false,
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(day), Text(dayName)]),
              ),
            ),
          );
        }),
      ),
    );
  }
}
