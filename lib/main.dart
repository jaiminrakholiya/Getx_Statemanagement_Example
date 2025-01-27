import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_screen.dart';
import 'home_screen_five.dart';
import 'home_screen_four.dart';
import 'home_screen_six.dart';
import 'home_second.dart';
import 'home_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreenSix(),
    );
  }
}

