import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mentor_app/routes.dart';
import 'package:mentor_app/screen/main_screen/main_screen.dart';
import 'package:mentor_app/screen/splash_screen/splash_screen.dart';
import 'package:mentor_app/themes/app_theme.dart';
import 'routes.dart';
import 'screen/splash_screen/splash_screen.dart';
import 'themes/app_theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Mentoring App',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      initialRoute: MainScreen.routeName,
      routes: routes,
    );
  }
}
