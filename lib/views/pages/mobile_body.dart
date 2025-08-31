import 'package:flutter/material.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_constants.dart';
import 'package:flutter_task/views/components/app_bar.dart';
import 'package:flutter_task/views/components/drawer/home_screen_drawer.dart';
import 'package:flutter_task/views/components/item_widget.dart';
import 'package:flutter_task/views/components/items_header_widget.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({super.key});

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MyAppBar(
        scaffoldKey: scaffoldKey,
      ),
      drawer: const HomeScreenDrawer(),
      drawerScrimColor: Colors.grey.withOpacity(0.1),
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12),
                color: AppColors.appBarBottomLineBorderColor,
                height: 1,
                width: double.maxFinite,
              ),
              const ItemsHeaderWidget(),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ItemWidget(
                      titleName: index == 1
                          ? AppConstants.title2
                          : AppConstants.title1,
                      profiles:
                          index == 1 ? AppConstants.list2 : AppConstants.list1,
                      itemPicture: AppConstants.itemPics[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
