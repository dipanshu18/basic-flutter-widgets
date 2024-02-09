// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:widgets/pages/home_page.dart';
import 'package:widgets/pages/profile_page.dart';
import 'package:widgets/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  // ignore: prefer_final_fields
  List _pages = [HomePage(), ProfilePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: _navigationBottomBar,
          items: [
            // home
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            // profile
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            // settings
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ]),
    );
  }
}
