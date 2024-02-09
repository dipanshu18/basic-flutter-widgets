// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:widgets/pages/first_page.dart';
import 'package:widgets/pages/home_page.dart';
import 'package:widgets/pages/settings_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FirstPage(),
      ),
      routes: {
        "/homepage": (context) => HomePage(),
        "/settingspage": (context) => SettingsPage()
      },
    );
  }
}
