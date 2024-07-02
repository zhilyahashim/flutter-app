import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widgets/profile_page.dart';
import 'package:untitled/Widgets/start_page.dart';

import '../models/people_model.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  static List<PeopleModel> main_People_list = [

  PeopleModel(
  "Mohammed ali",
 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHp0lXjIfMX9OzFqEjyfPEmAIdvsYIZbD8eQ&usqp=CAU"
  ),
    PeopleModel(
        "Sara ahmad",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6mSXj2A2zh92CV9tMNKfnvf3iq5ZRIPQr_w&usqp=CAU"
    ),
    PeopleModel(
        "Halwest",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_KIXql4p5fgSqY0e9w3_uUUxw00PDu9ckiA&usqp=CAU"
    ),
    PeopleModel(
        "Ahmad",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT65f5zSK9VQLrEphmpw8eVaeMVng9N-JPlEpZKnJFXFth4U-KqHH-wX3Pz2TWNqqt3KLU&usqp=CAU"
    ),
PeopleModel(
        "Mohammed ali",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHp0lXjIfMX9OzFqEjyfPEmAIdvsYIZbD8eQ&usqp=CAU"
    ),
  ];
  List<PeopleModel> display_list = List.from(main_People_list);
  void updateLists(String value) {
  setState(() {
  display_list = main_People_list
      .where((element) => element.People_title!
      .toLowerCase()
      .contains(value.toLowerCase()))
      .toList();
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Profile"),
        titleTextStyle: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
        leading:  Padding(
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
      body: Padding(
        padding: EdgeInsets.only(
          top: 80,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Add the peoples",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateLists(value),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(81, 143, 138, 138),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  hintText: "Search....",
                  prefixIcon: Icon(Icons.search)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? Center(
                child: Text("Not result found"),
              )
                  : ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  title: Text(
                    display_list[index].People_title!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),



                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          display_list[index].People_poster_url!),
                      ),
                    ),

                ),
              ),

          ],
        ),
      ),
    );
  }
}
