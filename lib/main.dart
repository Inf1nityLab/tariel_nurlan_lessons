
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_06/grid_screen.dart';
import 'package:tar_nur_lessons/lesson_06/instagram_post_screen.dart';
import 'package:tar_nur_lessons/lesson_06/map_screen.dart';
import 'package:tar_nur_lessons/lesson_07/tik_tok_screen.dart';


void main() {

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      home: const TikTokScreen(),
    );
  }
}





