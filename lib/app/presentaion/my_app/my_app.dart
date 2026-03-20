import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:template_project/utils/app_theme/app_theme.dart';
import 'package:template_project/utils/localization/app_locale.dart';
import 'package:template_project/services/navigation_service/navigation_services.dart';
import 'package:template_project/utils/injections/injections.dart' as di;
import 'package:template_project/utils/routes/app_route.dart';
import 'package:template_project/utils/routes/app_route_name.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization _localization = FlutterLocalization.instance;

  @override
  void initState() {
    _localization.init(
      mapLocales: <MapLocale>[
        const MapLocale('vi', AppLocale.vi, countryCode: 'VN'),
        const MapLocale('en', AppLocale.en),
      ],
      initLanguageCode: 'vi',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: di.sl<NavigationService>().rootNavKey,
      theme: AppTheme.themeData(),
      initialRoute: AppRouteName.welcome,
      onGenerateRoute: AppRoute.generateRoute,
      navigatorObservers: <NavigatorObserver>[
        di.sl<NavigationService>().routeObserver,
      ],
      localizationsDelegates: _localization.localizationsDelegates,
      supportedLocales: _localization.supportedLocales,
      builder: (BuildContext context, Widget? child) {
        return child!;
      },
    );
  }
}
