import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_screen.dart';
import 'package:mentor_app/screen/splash_screen/splash_screen.dart';
import 'package:mentor_app/theme.dart';

import 'routes.dart';

import 'screen/main_screen/main_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: MainScreen.routeName,
      routes: routes,
    );
  }
}
