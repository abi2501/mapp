import 'package:flutter/material.dart';
import 'package:mapp/model/data.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}

Widget getDoctorTile(int index, bool isTapped, Function openDetails) {
  Widget tile = Padding(
    padding: const EdgeInsets.only(left: 40, right: 40, top: 5, bottom: 5),
    child: ListTile(
      contentPadding: EdgeInsets.all(10),
      minLeadingWidth: 5,
      horizontalTitleGap: 0,
      isThreeLine: true,
      tileColor: isTapped ? const Color(0xFFFFFFFF) : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      leading: Wrap(
        children: [
          Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                docList[index]["img"].toString(),
                // fit: BoxFit.fill,
              )
            ],
          )
        ],
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(docList[index]["name"].toString()),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(docList[index]["title"].toString()),
            addVerticalSpace(10),
            Text(docList[index]["rating"].toString()),
          ],
        ),
      ),
      // onTap: isTapped ? openDetails(index) : () {},
    ),
  );
  return isTapped
      ? InkWell(
          onTap: () {
            openDetails(index);
          },
          child: tile,
        )
      : tile;
}

Container getDoctorTile1(int index) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(15),
    ),
    child: ListTile(
      leading: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFF2E4),
          // shape: BoxShape.rectangle,
        ),
        child: FittedBox(
          // fit: BoxFit.fitWidth,
          child: Image.asset(docList[index]["img"].toString()),
        ),
      ),
      title: Text(docList[index]["name"].toString()),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(docList[index]["title"].toString()),
          addVerticalSpace(10),
          Text(docList[index]["rating"].toString()),
        ],
      ),
    ),
  );
}
