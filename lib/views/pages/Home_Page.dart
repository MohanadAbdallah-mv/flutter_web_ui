import 'package:flutter/material.dart';
import 'package:flutter_task/views/components/responsive_layout.dart';
import 'package:flutter_task/views/pages/desktop_body.dart';
import 'package:flutter_task/views/pages/mobile_body.dart';
import 'package:flutter_task/views/pages/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MyMobileBody(),
      desktopBody: MyDesktopBody(),
      tabletBody: TabletBody(),
    );
  }
}
