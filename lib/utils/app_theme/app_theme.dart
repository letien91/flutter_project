import 'package:flutter/material.dart';
import 'package:template_project/utils/color/app_color.dart';
import 'package:template_project/utils/constain/app_constain.dart';

class AppTheme {
  AppTheme._();
  static ThemeData themeData() {
    final TextTheme textTheme =
        const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            fontFamily: AppConstain.kFontName,
          ),
        ).apply(
          bodyColor: AppColor.backgroundColor,
          displayColor: AppColor.backgroundColor,
        );
    return ThemeData(
      textTheme: textTheme,
      fontFamily: AppConstain.kFontName,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: AppColor.toolColor,
      unselectedWidgetColor: AppColor.backgroundColor,
      splashColor: AppColor.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          fontFamily: AppConstain.kFontName,
          color: AppColor.backgroundColor,
        ),
        toolbarTextStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: AppColor.backgroundColor,
        ),
      ),
    );
  }
}
