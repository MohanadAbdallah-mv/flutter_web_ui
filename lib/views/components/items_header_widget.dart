import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_constants.dart';
import 'package:flutter_task/util/app_theme.dart';
import 'package:flutter_task/views/components/responsive_layout.dart';

class ItemsHeaderWidget extends StatelessWidget {
  const ItemsHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveLayout.isMobile(context)
          ? const EdgeInsets.only(left: 16, right: 16, top: 22, bottom: 20)
          : const EdgeInsets.only(left: 80, right: 80, top: 22, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Items",
            style: AppTheme.regular24White,
          ),
          !ResponsiveLayout.isDesktop(context)
              ? Container(
                  width: !ResponsiveLayout.isDesktop(context) ? 40 : 48,
                  height: !ResponsiveLayout.isDesktop(context) ? 40 : 48,
                  decoration: const BoxDecoration(
                      color: AppColors.filterBackgroundGreyColor,
                      shape: BoxShape.circle),
                  child: SvgPicture.asset(
                    AppConstants.filter,
                    fit: BoxFit.scaleDown,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: !ResponsiveLayout.isDesktop(context) ? 40 : 48,
                      height: !ResponsiveLayout.isDesktop(context) ? 40 : 48,
                      decoration: const BoxDecoration(
                          color: AppColors.filterBackgroundGreyColor,
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        AppConstants.filter,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      height: 48,
                      width: 1,
                      color: AppColors.appBarBottomLineBorderColor,
                    ),
                    Container(
                      height: 48,
                      width: 177,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColors.orangeButtonColor),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppConstants.plus,
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Add a New Item",
                            style: AppTheme.medium14Black,
                          ),
                        ],
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }
}
