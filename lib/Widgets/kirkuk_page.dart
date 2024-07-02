import 'package:flutter/material.dart';
import 'package:untitled/Widgets/kirkuk_Bottom_Bar.dart';
import 'package:untitled/Widgets/kirkuk_page.dart';

import 'duhok_Bottom_Bar.dart';

class KirkukPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/city4.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: KirkukPage(),
        ),
        bottomNavigationBar: KirkukBottomBar(),
      ),
    );
  }
}




