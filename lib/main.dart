import 'package:flutter/material.dart';
import 'package:happy_birthday/Screens/FinalScreen.dart';
import 'package:happy_birthday/Screens/HappyBirthday.dart';
import 'package:happy_birthday/Screens/Memories.dart';
import 'package:happy_birthday/Screens/Welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/second' : (context) => HappyBirthday(),
        '/third' : (context) => finalScreen(),
        '/fourth' : (context) => memories()
      }

    );
  }
}