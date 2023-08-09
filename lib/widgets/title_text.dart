import 'package:flutter/material.dart';
class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key?key,
    required this.label,
    this.fontSize =20,
    this.fontStyle=FontStyle.normal,
    this.fontWeight=FontWeight.normal,
    this.color,
    this.textDecoration=TextDecoration.none,
    this.maxLine,
  }):super(key: key);
  final String label;
  final int? maxLine;
  final double fontSize;
  final FontStyle fontStyle;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDecoration textDecoration;
  @override
  Widget build(BuildContext context) {
    return
      Text(
        label,
        maxLines: maxLine,
        style: TextStyle(
            fontSize:fontSize,
            fontWeight: fontWeight,
            decoration: textDecoration,
            color: color,
            fontStyle: fontStyle,
          overflow: TextOverflow.ellipsis,
        ),);

  }
}