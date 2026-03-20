import 'package:flutter/material.dart';
import 'package:template_project/app/presentaion/pages/welcome_screen/welcome_screen.dart';
import 'app_route_name.dart';

class AppRoute {
  static Route<Object>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.welcome:
        return _pageRoute(settings, child: const WelcomeScreen());

      default:
        return _emptyRoute(settings);
    }
  }

  static Route<Object>? _pageRoute(
    RouteSettings settings, {
    required Widget child,
    bool fullscreen = false,
  }) {
    return MaterialPageRoute<Object>(
      settings: settings,
      builder: (BuildContext context) => child,
      fullscreenDialog: fullscreen,
    );
  }

  static Route<Object>? _emptyRoute(RouteSettings settings) {
    return MaterialPageRoute<Object>(
      settings: settings,
      builder: (BuildContext context) {
        //TODO: tienle
        return Scaffold(
          appBar: AppBar(
            // title: CommonComp.setSemiBoldText(txt: 'Có lỗi xảy ra'),
          ),
          // body: TLSErrorWidget(
          //   message: 'No path for ${settings.name}',
          //   retryTitle: 'Đăng xuất',
          //   onRetry: () {
          //     LoginHelper().logout(context);
          //   },
          // ),
        );
      },
    );
  }
}
