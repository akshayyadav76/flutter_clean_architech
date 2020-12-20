import 'package:flutter/material.dart';
import 'package:flutter_clean_architech/common/constants/size_constants.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common/extentions/size_extention.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _poppinsTextTheme => GoogleFonts.poppinsTextTheme();
  static TextStyle get _whiteHeadline6 => _poppinsTextTheme.headline6.copyWith(
        fontSize: Sizes.dimen_80.sp,
        color: Colors.white,
      );
  static getTextTheme() => TextTheme(
        headline6: _whiteHeadline6,

      );
}