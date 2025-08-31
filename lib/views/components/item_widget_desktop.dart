import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_theme.dart';
import 'package:flutter_task/views/components/approval_button.dart';
import 'package:flutter_task/views/components/image_heads.dart';
import 'package:flutter_task/views/components/responsive_layout.dart';
import '../../util/app_constants.dart';

class ItemWidgetDesktop extends StatelessWidget {
  final String titleName;
  final List<int> profiles;
  final String itemPicture;
  const ItemWidgetDesktop(
      {super.key,
      required this.profiles,
      required this.titleName,
      required this.itemPicture});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ResponsiveLayout.isDesktop(context) ? 322 : 400,
      // width: ResponsiveLayout.isDesktop(context) ? 243 : 360,
      // color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            // flex: 5,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Stack(
                    children: [
                      ///image
                      Container(
                        // Removed Positioned
                        width: constraints.maxWidth,
                        height: 200,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color:
                                        AppColors.filterBackgroundGreyColor)),
                            image: DecorationImage(
                              image: AssetImage(
                                itemPicture,
                              ),
                              fit: BoxFit.fill,
                            )),
                      ),

                      ///three dots
                      Positioned(
                          top: 13,
                          right: 16,
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                color: AppColors.blackColor.withOpacity(.6),
                                borderRadius: BorderRadius.circular(100)),
                            child: SvgPicture.asset(
                              AppConstants.threedots,
                              fit: BoxFit.scaleDown,
                            ),
                          )),

                      ///gradient
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.only(top: 30),
                          width: constraints.maxWidth,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: const [
                                  0.49,
                                  0.85
                                ],
                                colors: [
                                  AppColors.filterBackgroundGreyColor
                                      .withOpacity(0),
                                  AppColors.filterBackgroundGreyColor
                                      .withOpacity(1)
                                ]),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(8),
                                topLeft: Radius.circular(8)),
                          ),
                          child: Container(
                            height: 130,
                            width: constraints.maxWidth,
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.only(left: 14),
                            color: Colors.transparent,
                            child: const ApprovalButton(),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Container(
            width: 314,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: AppColors.filterBackgroundGreyColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      titleName.length >= 24
                          ? "${titleName.substring(0, 24)}..."
                          : titleName,
                      style: AppTheme.regular18White,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppConstants.calendar),
                      Flexible(
                        child: Text(
                          "5 Nights (Jan 16 - Jan 20, 2024) ",
                          style: AppTheme.regular12Grey,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: AppColors.appBarBottomLineBorderColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageHeads(
                        list: profiles,
                      ),
                      Flexible(
                        child: Text(
                          "4 unfinished tasks",
                          style: AppTheme.regular12Grey,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
