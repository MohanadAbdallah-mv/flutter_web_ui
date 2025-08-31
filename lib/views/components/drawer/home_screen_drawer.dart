import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_constants.dart';
import 'package:flutter_task/util/app_theme.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.blackColor,
      surfaceTintColor: Colors.black,
      child: ListView(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(top: 0, left: 0),
              child: SvgPicture.asset(AppConstants.logo),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            color: AppColors.appBarBottomLineBorderColor,
            height: 1,
            width: double.maxFinite,
          ),
          ListTile(
            title: Text(
              "Items",
              style: AppTheme.medium14White,
            ),
            trailing: VerticalDivider(
              color: AppColors.orangeButtonColor,
              thickness: 2,
              indent: 16,
              endIndent: 16,
            ),
          ),
          ListTile(
            title: Text(
              "Pricing",
              style: AppTheme.regular14Grey,
            ),
          ),
          ListTile(
            title: Text(
              "Info",
              style: AppTheme.regular14Grey,
            ),
          ),
          ListTile(
            title: Text(
              "Tasks",
              style: AppTheme.regular14Grey,
            ),
          ),
          ListTile(
            title: Text(
              "Analytics",
              style: AppTheme.regular14Grey,
            ),
          )
        ],
      ),
    );
  }
}
