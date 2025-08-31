import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_constants.dart';
import 'package:flutter_task/util/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ApprovalButton extends StatelessWidget {
  const ApprovalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 28,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        decoration: BoxDecoration(
            gradient: RadialGradient(radius: 100, focalRadius: 100, colors: [
              AppColors.approvalOrangeColor.withOpacity(.1),
              AppColors.blackColor,
            ]),
            color: AppColors.approvalOrangeColor.withOpacity(.3),
            border: Border.all(color: AppColors.approvalOrangeColor),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 6.0),
              child: Text(
                "Pending Approval",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
            SvgPicture.asset(AppConstants.dropdown)
          ],
        ),
      ),
    );
  }
}
