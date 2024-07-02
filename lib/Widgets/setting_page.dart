import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widgets/start_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Setting"),
        titleTextStyle: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w800),
        leading:  Padding(
          padding: const EdgeInsets.all(6),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (context) => startPage(),
                  ));
            },
            child: Ink(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,

                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                  )
                ],
              ),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),

      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 16 , top: 25 , right: 16),
        child: ListView(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.person,color: Colors.redAccent,),
                SizedBox(width: 8,),
                Text("Account",style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Divider(height: 15, thickness: 2,),
            SizedBox(height: 10,),


            GestureDetector(
              onTap: (){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("change password"),
                    content: Column(

                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    ),


                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("change password",style: TextStyle(fontWeight: FontWeight.w500,
                      fontSize: 18,color: Colors.grey[600]),),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey[600],),
                ],
              ),
            ),
            SizedBox(height: 12,),

            GestureDetector(
              onTap: (){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("social"),
                    content: Column(

                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    ),


                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("social",style: TextStyle(fontWeight: FontWeight.w500,
                      fontSize: 18,color: Colors.grey[600]),),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey[600],),
                ],
              ),
            ),

            SizedBox(height: 12,),
            GestureDetector(
              onTap: (){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("content security"),
                    content: Column(

                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    ),


                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("content setting",style: TextStyle(fontWeight: FontWeight.w500,
                      fontSize: 18,color: Colors.grey[600]),),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey[600],),
                ],
              ),
            ),
            SizedBox(height: 12,),
            GestureDetector(
              onTap: (){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("privacy and securit"),
                    content: Column(

                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    ),


                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("privacy and security",style: TextStyle(fontWeight: FontWeight.w500,
                      fontSize: 18,color: Colors.grey[600]),),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey[600],),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Icon(Icons.volume_down_outlined,color: Colors.redAccent,),
                SizedBox(width: 8,),
                Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Divider(height: 15, thickness: 2,),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New for you",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),),
                Transform.scale(
                  scale: 0.6,
                    child: CupertinoSwitch(value: true, onChanged: (bool val){})),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Account activity",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),),
                Transform.scale(
                    scale: 0.6,
                    child: CupertinoSwitch(value: false, onChanged: (bool val){})),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notificate",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),),
                Transform.scale(
                    scale: 0.6,
                    child: CupertinoSwitch(value: true, onChanged: (bool val){})),

              ],
            )


          ],
        ),
      ),
    );
  }
}
