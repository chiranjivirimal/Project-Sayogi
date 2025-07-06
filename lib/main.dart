import 'package:flutter/material.dart';
import 'package:project_sayogi/splashscreen.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintBaselinesEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splashscreen());
  }
}
