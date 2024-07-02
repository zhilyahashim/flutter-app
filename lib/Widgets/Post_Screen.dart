import 'package:flutter/material.dart';
import 'package:untitled/Widgets/Post_App_Bar.dart';

import 'Post_Bottom_Bar.dart';

class PostScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration:BoxDecoration(
        image:DecorationImage(
        image: AssetImage("images/city1.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.7,
      ) ,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),

    );
  }
}

