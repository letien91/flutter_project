import 'package:flutter/material.dart';
import 'package:template_project/utils/constain/app_constain.dart';

class TextHelper {
  TextHelper._();

  static Text setBoldText({
    required String txt,
    double fontSize = 14,
    Color color = const Color.fromRGBO(255, 255, 255, 1),
    int maxLine = 1,
    TextAlign textAlign = TextAlign.start,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextDecoration textDecoration = TextDecoration.none,
  }) {
    return Text(
      txt,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: AppConstain.kFontName,
        decoration: textDecoration,
      ),
      maxLines: maxLine,
      overflow: overflow,
    );
  }

  static Text setRegularText({
    required String txt,
    String? fontFamily = AppConstain.kFontName,
    double fontSize = 14,
    Color color = const Color.fromRGBO(255, 255, 255, 1),
    int maxLine = 1,
    TextAlign textAlign = TextAlign.start,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextDecoration textDecoration = TextDecoration.none,
  }) {
    return Text(
      txt,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        decoration: textDecoration,
      ),
      maxLines: maxLine,
      overflow: overflow,
    );
  }

  static Text setSemiBoldText({
    required String txt,
    double fontSize = 14,
    Color color = const Color.fromRGBO(255, 255, 255, 1),
    int maxLine = 1,
    TextAlign textAlign = TextAlign.start,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextBaseline baseLine = TextBaseline.alphabetic,
    TextDecoration textDecoration = TextDecoration.none,
  }) {
    return Text(
      txt,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: AppConstain.kFontName,
        fontWeight: FontWeight.w600,
        decoration: textDecoration,
        textBaseline: baseLine,
      ),
      maxLines: maxLine,
      overflow: overflow,
    );
  }

  static Text setMediumText({
    required String txt,
    double fontSize = 14,
    Color color = const Color.fromRGBO(255, 255, 255, 1),
    int maxLine = 1,
    TextAlign textAlign = TextAlign.start,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextDecoration textDecoration = TextDecoration.none,
  }) {
    return Text(
      txt,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: AppConstain.kFontName,
        decoration: textDecoration,
      ),
      maxLines: maxLine,
      overflow: overflow,
    );
  }
}
