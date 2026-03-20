import 'dart:math' as math;

import 'package:flutter/material.dart';

class AppColor {
  static Color get ballRed => Colors.red;
  static Color get toolColor => Colors.transparent;
  static Color get scoreBarColor => Colors.red;
  static Color get backgroundColor => Colors.black;

  static Color fromHex(String hexString) {
    final StringBuffer buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static Color withOpacity(Color color, {double opacity = 1}) {
    final double value = opacity < 0
        ? 0
        : opacity > 1
        ? 1
        : opacity;
    return color.withAlpha((255.0 * value).round());
  }

  static int colorValue(double value) => (value * 255.0).round();

  static Color randomColor() {
    final Color color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt());
    return withOpacity(color);
  }
}
