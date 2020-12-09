import 'package:flutter/material.dart';
import 'package:glossary/screens/home.dart';
import 'package:glossary/screens/loadingScreen.dart';
import 'package:glossary/screens/welcomeScreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
          primaryColor: Colors.white,
          fontFamily: 'Cabin'),
      home: SplashScreen(), //welcomeScreen.dart
    );
  }
}
