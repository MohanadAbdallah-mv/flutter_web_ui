import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_task/util/app_constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  const ResponsiveLayout(
      {required this.mobileBody,
      required this.desktopBody,
      required this.tabletBody});

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < AppConstants.mobileWidth;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width < AppConstants.tabletWidth &&
      MediaQuery.sizeOf(context).width >= AppConstants.mobileWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= AppConstants.tabletWidth;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return LayoutBuilder(builder: (context, constraints) {
      if (size.width >= AppConstants.tabletWidth) {
        log("DesktopView");
        log(size.toString());
        return desktopBody;
      } else if (size.width > AppConstants.mobileWidth &&
          size.width <= AppConstants.tabletWidth) {
        log("tabletView");
        log(size.toString());
//trying somehing
        return desktopBody;
      } else {
        return mobileBody;
      }
    });
  }
}
