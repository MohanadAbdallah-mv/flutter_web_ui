import 'dart:developer';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/views/components/responsive_layout.dart';
import 'package:flutter_task/views/flutterflow/main_screen.dart';
import 'package:flutter_task/views/pages/Home_Page.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size designSize;
    if (ResponsiveLayout.isDesktop(context)) {
      log("screenutil");
      designSize = Size(1440, 905);
    } else if (ResponsiveLayout.isTablet(context)) {
      log("screenutil");
      designSize = Size(744, 1133);
    } else {
      log("screenutil");
      designSize = Size(375, 812);
    }
    return ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}
