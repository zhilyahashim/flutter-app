import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widgets/add_page.dart';
import 'package:untitled/Widgets/profile_page.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  var city = ["Rwandiz", "Ahmadawa"];
  int index=0;
  List<dynamic> Data=[{
  "name":"Mohammed ali",
  "imageUrl":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHp0lXjIfMX9OzFqEjyfPEmAIdvsYIZbD8eQ&usqp=CAU",
  "paragraph":"Rawandiz (Kurdish: ڕەواندز, romanized: Rewandiz) "
      "is a city in the Kurdistan Region of Iraq, "
      "located in the Erbil Governorate",
  },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(Data[index]["name"],style: TextStyle(color: Colors.redAccent),),
        leading: Padding(
          padding: const EdgeInsets.all(6),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
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
     body: Center(


       child: Container(
          child: ListView.builder(

              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                          height:350,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                  "images/city5.jpeg"),
                              fit: BoxFit.cover,
                              opacity: 0.8,
                            ),
                          ),
                        ),

                      Padding(
                        padding: EdgeInsets.only(top: 5,bottom: 60),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              city[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),),
                              SizedBox(height: 10,),


                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                ),

                            SizedBox(width: 3,),
                            Icon(
                              Icons.comment_bank_outlined,
                              size: 30,
                            )
                            ],),
                          ],
                        ),
                      ),

                    ],
                  ),
                );
              }),
        ),
     ),
    );
  }
}
