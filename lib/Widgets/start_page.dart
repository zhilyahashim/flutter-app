import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widgets/post_page.dart';
import 'package:untitled/Widgets/profile_page.dart';
import 'package:untitled/Widgets/setting_page.dart';
import 'package:untitled/scence/Home_Screen.dart';

import '../scence/welcome_Scren.dart';

class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  int index = 0;
  List<Widget> Widgets = [HomePage(), ProfilePage(), PostPage(), SettingPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Widgets[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.redAccent,
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontWeight: FontWeight.w400))),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (i) {
            setState(() {
              index = i;
            });
          },
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.list_alt_outlined), label: 'Lists'),
            NavigationDestination(icon: Icon(Icons.post_add), label: 'Post'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Setting'),
          ],
        ),
      ),
    );
  }
}
