import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:template_project/app/presentaion/components/custom_back_button.dart';
import 'package:template_project/app/presentaion/components/appbar/sky_background.dart';
import 'package:template_project/utils/constain/app_constain.dart';

class SkyAppBar {
  SkyAppBar._();
  static AppBar defaultAppBar({
    String title = '',
    bool showBackButton = true,
    Widget? leading,
    VoidCallback? onBackPress,
    List<Widget>? actions,
    double elevation = 0.0,
    Color? backgroundColor = Colors.transparent,
    double? leadingWidth,
    bool isCenterTitle = true,
    bool excludeHeaderSemantics = false,
    Widget? flexibleSpace,
  }) {
    late Widget leadingWidget = Container();
    if (leading != null) {
      leadingWidget = leading;
    } else if (showBackButton) {
      leadingWidget = CustomBackButton(onPress: onBackPress);
    }
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: isCenterTitle,
      systemOverlayStyle: const SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Colors.transparent,
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      automaticallyImplyLeading: leading != null,
      leading: leadingWidget,
      leadingWidth: leadingWidth,
      actions: actions,
      elevation: elevation,
      excludeHeaderSemantics: excludeHeaderSemantics,
      iconTheme: const IconThemeData(color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontFamily: AppConstain.kFontName,
          fontWeight: FontWeight.w600,
        ),
      ),
      flexibleSpace: flexibleSpace ?? const SkyBackGround(),
    );
  }
}
