import 'package:flutter/material.dart';
import 'package:untitled/Widgets/slemani_page.dart';

import 'slemani_Bottom_Bar.dart';

class Slemani_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/city2.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Slemani_Page(),
        ),
        bottomNavigationBar: SlemaniBottomBar(),
      ),
    );
  }
}
