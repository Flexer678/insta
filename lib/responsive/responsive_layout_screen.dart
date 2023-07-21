import 'package:flutter/material.dart';
import 'package:instagram/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget WebScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.WebScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    //layout builder is used for
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        //to check if the the maximum screen size
        if (constraints.maxWidth > webscreenSize) {
          return WebScreenLayout;
        } else {
          return mobileScreenLayout;
        }
      },
    );
  }
}
