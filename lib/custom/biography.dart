import 'package:flutter/material.dart';
import 'package:mapp/util/constants.dart';

class BiographyContent extends StatefulWidget {
  final String txt;
  const BiographyContent({super.key, required this.txt});

  @override
  State<BiographyContent> createState() => _BiographyContentState();
}

class _BiographyContentState extends State<BiographyContent> {
  bool isReadMore = false;
  @override
  Widget build(BuildContext context) {
    return OverflowBar(
      children: [
        Text(
          widget.txt,
          maxLines: isReadMore ? 10 : 1,
          // overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: COLOR_OFF_GREY),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isReadMore = !isReadMore;
            });
          },
          child: const Text("..."),
        )
      ],
    );
    ;
  }
}
