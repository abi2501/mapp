import 'package:flutter/material.dart';
import 'package:mapp/custom/border_box.dart';
import 'package:mapp/model/data.dart';
import 'package:mapp/screens/details.dart';
import 'package:mapp/util/constants.dart';
import 'package:mapp/util/helper.dart';

final List categoryIcons = [
  'assets/images/heart.png',
  'assets/images/tablet.png',
  'assets/images/dental.png',
  'assets/images/pregnant.png',
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // docList.map((ele) {
    //   print(ele);
    // });

    void openDoctorDetailsPage(int idx) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return DoctorDetailsScreen(
          index: idx,
        );
      }));
    }

    return Scaffold(
      backgroundColor: COLOR_OFF_WHITE,
      body: CustomScrollView(
        slivers: [
          getAppBarContent(context),
          SliverAppBar(
            backgroundColor: COLOR_OFF_WHITE,
            title: Text(
              "Categories",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SliverToBoxAdapter(
            child: getCategoriesContent(),
          ),
          SliverList.builder(
            itemCount: docList.length,
            itemBuilder: (item, index) {
              return getDoctorTile(index, true, openDoctorDetailsPage);
            },
          )
        ],
      ),
    );
  }

  Widget getCategoriesContent() {
    // print(docList);

    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceEvenly,
      children: [
        for (final item in categoryIcons)
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: BorderBox(
                padding: const EdgeInsets.all(10),
                width: 60,
                height: 60,
                borderRadius: 50,
                color: COLOR_WHITE,
                isElevated: true,
                child: Image.asset(item)),
          )
      ],
    );
  }

  SliverAppBar getAppBarContent(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 350.0,
      flexibleSpace: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        decoration: BoxDecoration(
          color: COLOR_PRIMARY_BLUE,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi, Steven",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: const Color(0xFFFFFFFF)),
                ),
                const BorderBox(
                    padding: EdgeInsets.all(10),
                    width: 40,
                    height: 40,
                    borderRadius: 15,
                    color: Color(0xFF66B2FF),
                    isElevated: false,
                    child: Icon(
                      Icons.notifications_none_sharp,
                      color: COLOR_WHITE,
                    ))
              ],
            ),
            Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: [
                Text(
                  'Let\'s find your top doctor!',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headlineLarge,
                )
              ],
            ),
            addVerticalSpace(50),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search here",
                  hintStyle: Theme.of(context).textTheme.labelMedium,
                  prefixIcon: const Icon(Icons.search_rounded),
                  fillColor: COLOR_WHITE,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            addVerticalSpace(20),
          ],
        ),
      ),
    );
  }
}
