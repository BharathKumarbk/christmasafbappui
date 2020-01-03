import 'package:flutter/material.dart';
import 'package:santaappfbapp/homescreen.dart';
import 'package:santaappfbapp/splashscreen.dart';

void main() => runApp(SantaApp());

class SantaApp extends StatefulWidget {
  @override
  _SantaAppState createState() => _SantaAppState();
}

class _SantaAppState extends State<SantaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>SplashScreen(),
        '/home':(context)=>HomeScreen()
      },
    );
  }
}
