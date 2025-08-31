import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_constants.dart';
import 'package:flutter_task/views/components/app_bar.dart';
import 'package:flutter_task/views/components/drawer/home_screen_drawer.dart';
import 'package:flutter_task/views/components/items_header_widget.dart';
import 'package:flutter_task/views/components/responsive_layout.dart';
import 'package:flutter_task/views/components/item_widget_desktop.dart';

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({super.key});

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MyAppBar(
        scaffoldKey: scaffoldKey,
      ),
      drawer:
          ResponsiveLayout.isDesktop(context) ? null : const HomeScreenDrawer(),
      drawerScrimColor: Colors.grey.withOpacity(0.1),
      backgroundColor: AppColors.blackColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  color: AppColors.appBarBottomLineBorderColor,
                  height: 1,
                  width: double.maxFinite,
                ),
                ResponsiveLayout.isDesktop(context)
                    ? const Positioned(
                        right: 675,
                        child: SizedBox(
                          width: 42,
                          child: Divider(
                            color: AppColors.orangeButtonColor,
                            thickness: 1,
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
            const ItemsHeaderWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ItemWidgetDesktop(
                      titleName: index == 1
                          ? AppConstants.title2
                          : AppConstants.title1,
                      profiles:
                          index == 1 ? AppConstants.list2 : AppConstants.list1,
                      itemPicture: AppConstants.itemPics[index]);
                },
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing:
                        ResponsiveLayout.isDesktop(context) ? 16 : 16,
                    crossAxisSpacing:
                        ResponsiveLayout.isDesktop(context) ? 20 : 10,
                    maxCrossAxisExtent: 314),
              ),
            )
          ],
        ),
      ),
    );
  }
}
