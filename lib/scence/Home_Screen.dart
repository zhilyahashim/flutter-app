import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:untitled/Widgets/profile_page.dart';
import 'package:untitled/Widgets/rwandiz_page.dart';
import 'package:untitled/Widgets/setting_page.dart';
import 'package:untitled/scence/welcome_Scren.dart';
import '../Widgets/Home_App_Bar.dart';
import '../Widgets/Post_Screen.dart';
import '../Widgets/Post_App_Bar.dart';
import '../Widgets/ahmadawa_page.dart';
import '../Widgets/duhok_page.dart';
import '../Widgets/kirkuk_page.dart';
import '../Widgets/slemani_page.dart';
import 'package:flutter/cupertino.dart';
import 'Home_Screen.dart';
import '../Widgets/post_page.dart';
import '../Widgets/profile_page.dart';

class HomePage extends StatefulWidget {
 

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var category = [
    "Nice Places",
    "Most Visited",
    "Favorites",
    "New Added",
    "Hotels",
    "Restaurants",
  ];
  var city = ["Hawler", "slemani", "Duhok", "Kirkuk", "Rwandiz", "Ahmadawa"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Container(
            child: SingleChildScrollView(
                child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    height: 200,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PostScreen(),
                                ));
                          },
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "images/city${index + 1}.jpeg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.7,
                                )),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.bookmark_border_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    city[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )),
              
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for (int i = 0; i < 6; i++)
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Text(
                              category[i],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PostScreen(),
                                    ));
                              },
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "images/city${index + 1}.jpeg"),
                                    fit: BoxFit.cover,
                                    opacity: 0.8,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    city[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
          
            ])),
          ),
        ),
      ),
      drawer: Drawer(
     
        child: ListView(
         
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("gordon ramsy"),
              accountEmail: const Text("abhishekm977@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                    child:Image.asset('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxBIR8hZzSTmag--4L07X6ScxfvxV7396wZw&usqp=CAU')),
              ), //circleAvatar
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
            ),



            ListTile(
              title: const Text('Home'),
              leading: IconButton(
                icon: Icon(Icons.home),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
              onTap: () {
             
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Lists'),
              leading: IconButton(
                icon: Icon(Icons.list),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
              onTap: () {
                
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Posts'),
              leading: IconButton(
                icon: Icon(Icons.post_add),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
              onTap: () {
              
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Setting'),
              leading: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
              onTap: () {
           
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }
}
