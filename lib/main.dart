import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:uponly_doc_plus/Screens/PageViews/doctor_helpline.dart';
import 'package:uponly_doc_plus/Screens/get_started_screen.dart';
import 'package:uponly_doc_plus/Screens/splash_screen.dart';

import 'Screens/PageViews/sign_in.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

// Future hideStatusBar() => SystemChrome.setEnabledSystemUIMode([SystemUiOverlay.bottom]);
