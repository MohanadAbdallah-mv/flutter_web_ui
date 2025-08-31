import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  //400 regular,medium500 , light 300, bold 600
  static TextStyle regular24White = GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: AppColors.profileTextWhiteColor);
  static TextStyle regular14White = GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppColors.profileTextWhiteColor);
  static TextStyle light14White = GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      color: AppColors.profileTextWhiteColor);
  static TextStyle regular18White = GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: AppColors.profileTextWhiteColor);
  static TextStyle regular12Grey = GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: AppColors.appBarTextGreyColor);
  static TextStyle regular14Grey = GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppColors.appBarTextGreyColor);
  static TextStyle medium8_4Orange = GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 8.4,
      color: AppColors.orangeButtonColor);
  static TextStyle medium14White = GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.profileTextWhiteColor);

  static TextStyle medium14Black = GoogleFonts.inter(
      fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.blackColor);
}
