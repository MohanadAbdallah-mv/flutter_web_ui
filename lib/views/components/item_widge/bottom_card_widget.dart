import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_constants.dart';
import 'package:flutter_task/util/app_theme.dart';
import 'package:flutter_task/views/components/approval_button.dart';
import 'package:flutter_task/views/components/image_heads.dart';

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({
    super.key,
    required this.titleName,
    required this.profiles,
  });

  final String titleName;
  final List<int> profiles;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15, bottom: 16.0),
          child: SizedBox(),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 6),
              child: Text(
                titleName.length >= 24
                    ? "${titleName.substring(0, 24)}..."
                    : titleName,
                style: AppTheme.regular18White,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SvgPicture.asset(AppConstants.calendar),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: FittedBox(
                      child: Text(
                        "5 Nights (Jan 16 - Jan 20, 2024) ",
                        style: AppTheme.regular12Grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: AppColors.appBarBottomLineBorderColor,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageHeads(
                    list: profiles,
                  ),
                  FittedBox(
                    child: Text(
                      "4 unfinished tasks",
                      style: AppTheme.regular12Grey,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
