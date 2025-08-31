import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_constants.dart';
import 'package:flutter_task/util/app_theme.dart';
import 'package:flutter_task/views/components/responsive_layout.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final scaffoldKey;
  const MyAppBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    final List<Widget> desktopRow = [
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Text(
            "Items",
            style: AppTheme.medium14White,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Text(
            "Pricing",
            style: AppTheme.regular14Grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Text(
            "Info",
            style: AppTheme.regular14Grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Text(
            "Tasks",
            style: AppTheme.regular14Grey,
          ),
        ),
        Text(
          "Analytics",
          style: AppTheme.regular14Grey,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: VerticalDivider(
            color: AppColors.appBarDividerGreyColor,
            thickness: 1,
            indent: 8,
            endIndent: 8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: SvgPicture.asset(
            AppConstants.settings,
            height: 24,
            width: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: SvgPicture.asset(
            AppConstants.notification,
            height: 24,
            width: 24,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 15),
          child: VerticalDivider(
            color: AppColors.appBarDividerGreyColor,
            thickness: 1,
            indent: 8,
            endIndent: 8,
          ),
        ),
        const Image(
          image: AssetImage(AppConstants.profile1),
          width: 32,
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 4),
          child: Text(
            "John Doe",
            style: AppTheme.regular14White,
          ),
        ),
        SizedBox(
          height: 16,
          width: 16,
          child: SvgPicture.asset(
            AppConstants.dropdown,
          ),
        )
      ])
    ];
    return Padding(
      padding: !ResponsiveLayout.isDesktop(context)
          ? const EdgeInsets.only(left: 0, right: 16, top: 16)
          : const EdgeInsets.only(left: 80, right: 80, top: 18),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.blackColor,
        iconTheme: const IconThemeData(color: AppColors.profileTextWhiteColor),
        title: Row(
          children: [
            !ResponsiveLayout.isDesktop(context)
                ? Container(
                    padding: EdgeInsets.only(left: 16, right: 24),
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        AppConstants.menu,
                        fit: BoxFit.none,
                      ),
                      onTap: () {
                        if (scaffoldKey.currentState!.isDrawerOpen) {
                          scaffoldKey.currentState!.closeDrawer();
                          //close drawer, if drawer is open
                        } else {
                          scaffoldKey.currentState!.openDrawer();
                          //open drawer, if drawer is closed
                        }
                      },
                    ),
                  )
                : SizedBox(),
            SvgPicture.asset(
              AppConstants.logo,
            ),
          ],
        ),
        titleSpacing: 0,
        actions: !ResponsiveLayout.isDesktop(context)
            ? [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: SvgPicture.asset(
                        AppConstants.settings,
                        height: 24,
                        width: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: SvgPicture.asset(
                        AppConstants.notification,
                        height: 24,
                        width: 24,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: VerticalDivider(
                        color: AppColors.appBarDividerGreyColor,
                        thickness: 1,
                        indent: 8,
                        endIndent: 8,
                      ),
                    ),
                    const Image(
                      image: AssetImage(AppConstants.profile1),
                      width: 32,
                      height: 32,
                    )
                  ],
                )
              ]
            : desktopRow,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
