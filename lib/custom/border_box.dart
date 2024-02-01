import 'package:flutter/material.dart';
import 'package:mapp/util/constants.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final Color color;
  final EdgeInsets padding;
  final double width, height;
  final double borderRadius;
  final bool isElevated;

  const BorderBox(
      {super.key,
      required this.padding,
      required this.width,
      required this.height,
      required this.borderRadius,
      required this.color,
      required this.isElevated,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: COLOR_WHITE),
        boxShadow: isElevated
            ? const [
                BoxShadow(
                    color: Color.fromARGB(255, 210, 205, 205), //New
                    blurRadius: 2.0,
                    offset: Offset(0, 1.5))
              ]
            : [],
      ),
      child: child,
    );
  }
}
