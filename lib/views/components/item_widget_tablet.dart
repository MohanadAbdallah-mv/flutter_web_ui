import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_theme.dart';
import 'package:flutter_task/views/components/approval_button.dart';
import 'package:flutter_task/views/components/image_heads.dart';
import 'package:flutter_task/views/components/item_widge/bottom_card_widget.dart';
import 'package:flutter_task/views/components/responsive_layout.dart';
import '../../util/app_constants.dart';

class ItemWidgetTablet extends StatelessWidget {
  final String titleName;
  final List<int> profiles;
  final String itemPicture;
  const ItemWidgetTablet(
      {super.key,
      required this.profiles,
      required this.titleName,
      required this.itemPicture});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ResponsiveLayout.isTablet(context) ? 354 : 340,
      // width: ResponsiveLayout.isTablet(context) ? 314 : 360,
      // margin: const EdgeInsets.only(bottom: 16),
      // color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Stack(
                children: [
                  ///image
                  Container(
                    // Removed Positioned
                    width: constraints.maxWidth,
                    height: 180,
                    decoration: BoxDecoration(
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
                              AppColors.filterBackgroundGreyColor.withOpacity(1)
                            ]),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8)),
                      ),
                      child: Container(
                        height: 100,
                        width: constraints.maxWidth,
                        padding: const EdgeInsets.only(left: 14),
                        color: Colors.transparent,
                        alignment: Alignment.bottomLeft,
                        child: const ApprovalButton(),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Container(
              // margin: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                color: AppColors.filterBackgroundGreyColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: BottomCardWidget(titleName: titleName, profiles: profiles))
        ],
      ),
    );
  }
}
