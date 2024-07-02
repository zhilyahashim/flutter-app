//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widgets/ahmadawa_page.dart';
import 'package:untitled/Widgets/duhok_Bottom_Bar.dart';
import 'package:untitled/Widgets/duhok_page.dart';
import 'package:untitled/Widgets/kirkuk_Bottom_Bar.dart';
import 'package:untitled/Widgets/kirkuk_page.dart';
import 'package:untitled/Widgets/post_page.dart';
import 'package:untitled/Widgets/profile_page.dart';
import 'package:untitled/Widgets/rwandiz_Bottom_Bar.dart';
import 'package:untitled/Widgets/rwandiz_page.dart';
import 'package:untitled/Widgets/setting_page.dart';
import 'package:untitled/Widgets/slemani_Bottom_Bar.dart';
import 'package:untitled/Widgets/slemani_page.dart';
import 'package:untitled/Widgets/start_page.dart';
import 'package:untitled/scence/Home_Screen.dart';
import 'package:untitled/scence/welcome_Scren.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traviling',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: welcomeScren(),
      routes: {
        '/start_page':(context)=>startPage(),
        '/slemani_page': (context) =>
            Slemani_Page(), //la har jeyak bange aw filakra awa bkretawa
        '/slemane_Bottom_Bar': (context) => SlemaniBottomBar(),
        'duhok_page': (context) => DuhokPage(),
        '/duhon_BottomBar': (context) => DuhokBottomBar(),
        '/kirkuk_page': (context) => KirkukPage(),
        '/kirkuk_Bottom_Bar': (context) => KirkukBottomBar(),
        '/ahmadawa_page': (context) => AhmadawaPage(),
        '/rwandiz_page': (context) => RwandizPage(),
        '/rwandiz_Bottom_Bar': (context) => RwandizBottomBar(),
        '/Home_Screen': (context) => HomePage(),
        '/profile_page': (context) => ProfilePage(),
        '/post_page':(context)=>PostPage(),
        '/setting_page':(context)=>SettingPage(),

      },
    );
  }
}
