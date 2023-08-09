import 'package:flutter/material.dart';
import 'package:flutterfirebase_app/widgets/title_text.dart';
import 'package:shimmer/shimmer.dart';
class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 12),
      baseColor:Colors.pinkAccent ,
        highlightColor: Colors.deepPurpleAccent,
        child: TitleTextWidget(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          label: "Shop Smart",
        ),
        );
  }
}
