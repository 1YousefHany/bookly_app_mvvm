import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
    required this.textStyle,
    required this.textColor,
    this.onPressed,
  });
  final Color? backgroundColor;
  final String text;
  final double? topLeft, topRight, bottomLeft, bottomRight;
  final TextStyle textStyle;
  final Color textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        onPressed: () {},
        style: customStyle(),
        child: textChild(),
      ),
    );
  }

  Text textChild() {
    return Text(
        text,
        style: textStyle.copyWith(color: textColor),
        maxLines: 1,
      );
  }

  ButtonStyle customStyle() {
    return TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: customShape(),
      );
  }

  RoundedRectangleBorder customShape() {
    return RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(bottomLeft ?? 0),
            bottomRight: Radius.circular(bottomRight ?? 0),
            topLeft: Radius.circular(topLeft ?? 0),
            topRight: Radius.circular(topRight ?? 0),
          ),
        );
  }
}
