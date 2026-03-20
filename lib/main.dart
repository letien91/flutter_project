import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:template_project/app/presentaion/my_app/my_app.dart';
import 'package:template_project/hive_registrar.g.dart';
import 'package:template_project/utils/bloc_observer/app_bloc_observer.dart';

import 'utils/injections/injections.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();

  await di.init();

  await Hive.initFlutter();
  Hive.registerAdapters();

  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) async {
    Bloc.observer = const AppBlocObserver();
    runApp(const MyApp());
  });
}
