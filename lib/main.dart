import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:window_manager/window_manager.dart';

import 'core/routers/routers.dart';
import 'layers/presentation/themes/my_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();
  WindowManager.instance.setFullScreen(true);

  runApp(
    MaterialApp.router(
      routerConfig: routers,
      title: "Diet Recommender",
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    ),
  );

  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withValues(alpha: 0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}
