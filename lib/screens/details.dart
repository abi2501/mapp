import 'package:flutter/material.dart';
import 'package:mapp/custom/biography.dart';
import 'package:mapp/custom/border_box.dart';
import 'package:mapp/custom/calendar.dart';
import 'package:mapp/model/data.dart';
import 'package:mapp/util/constants.dart';
import 'package:mapp/util/helper.dart';

final specialities = [
  "Dental Surgeon",
  "Aesthetic Surgeon",
  "General",
  "Orthodontist"
];

class DoctorDetailsScreen extends StatelessWidget {
  final int index;

  const DoctorDetailsScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return Scaffold(
      backgroundColor: COLOR_OFF_WHITE,
      appBar: getDetailsAppbar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getDoctorTile(index, false, () {}),
              getBiographyContent(index, context),
              getSpecialityContent(context),
              addVerticalSpace(20),
              getCalendarContent(context),
              getTimeContent(context),
              addVerticalSpace(30),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(25),
                      backgroundColor: COLOR_PRIMARY_BLUE),
                  onPressed: () {},
                  child: Text(
                    "Book Appointment",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: COLOR_WHITE, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getTimeContent(context) {
    List timings = ["09.00AM", "11.00AM", "03.00PM"];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Time",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(timings.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: BorderBox(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 20 : 0,
                    right: 20,
                  ),
                  width: 80,
                  height: 40,
                  borderRadius: 40,
                  color: COLOR_WHITE,
                  isElevated: false,
                  child: Center(child: Text(timings[index].toString()))),
            );
          }),
          // children: [
          //   const BorderBox(
          //       padding: EdgeInsets.all(20),
          //       width: 80,
          //       height: 40,
          //       borderRadius: 40,
          //       color: COLOR_WHITE,
          //       isElevated: false,
          //       child: Center(child: Text("TES"))),
          // ],
        )
      ],
    );
  }

  Widget getCalendarContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Date",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Container(
            padding: const EdgeInsets.only(top: 20), child: CalendarContent()),
      ],
    );
  }

  Widget getSpecialityContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Specialities",
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: COLOR_OFF_GREY,
                fontWeight: FontWeight.bold,
              ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: List.generate(specialities.length, (index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: const Color(0xFFB2B2B2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 0,
                    ),
                    // style: ButtonStyle(backgroundColor: Color(0xFFB2B2B2)),
                    onPressed: () {},
                    child: Text(
                      specialities[index],
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: const Color(0xFF080C2F)),
                    ),
                  ),
                );
              }),
            ),
          ),
        )
      ],
    );
  }

  Widget getBiographyContent(int id, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Biography",
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: COLOR_OFF_GREY,
                fontWeight: FontWeight.bold,
              ),
        ),
        addVerticalSpace(10),
        BiographyContent(txt: docList[index]["biography"].toString()),
      ],
    );
  }

  AppBar getDetailsAppbar() {
    return AppBar(
      backgroundColor: COLOR_OFF_WHITE,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back))
      ],
      title: Text("Detail Doctor"),
    );
  }
}
