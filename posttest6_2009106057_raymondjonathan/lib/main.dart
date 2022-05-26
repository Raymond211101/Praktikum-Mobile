import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'LibreFranklin',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

