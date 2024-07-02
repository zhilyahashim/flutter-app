import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widgets/posts_page.dart';
import 'package:untitled/Widgets/start_page.dart';

import 'add_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<dynamic> Data = [
    {
      "name": "Mohammed ali",
      "age": "20",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHp0lXjIfMX9OzFqEjyfPEmAIdvsYIZbD8eQ&usqp=CAU"
    },
    {
      "name": "Sara ahmad",
      "age": "23",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6mSXj2A2zh92CV9tMNKfnvf3iq5ZRIPQr_w&usqp=CAU"
    },
    {
      "name": "Lana ali",
      "age": "30",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2b4mGeezZbmAPTQcwdkvvLoWXowYLdgsZiA&usqp=CAU"
    },
    {
      "name": "Halwest ",
      "age": "27",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_KIXql4p5fgSqY0e9w3_uUUxw00PDu9ckiA&usqp=CAU"
    },
    {
      "name": "Ahmad",
      "age": "20",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmY81dvcpnTLaTaLNY73TTpuq_sawNoQzqXQ&usqp=CAU"
    },
    {
      "name": "Sara",
      "age": "25",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjLwYzVDPluO8TBZNlc00vmV4-sVeCPCm_1g&usqp=CAU"
    },
    {
      "name": "Ahmad",
      "age": "20",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT65f5zSK9VQLrEphmpw8eVaeMVng9N-JPlEpZKnJFXFth4U-KqHH-wX3Pz2TWNqqt3KLU&usqp=CAU"
    },
    {
      "name": "Ahmad",
      "age": "20",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmY81dvcpnTLaTaLNY73TTpuq_sawNoQzqXQ&usqp=CAU"
    },
    {
      "name": "Sara",
      "age": "25",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjLwYzVDPluO8TBZNlc00vmV4-sVeCPCm_1g&usqp=CAU"
    },
    {
      "name": "Ahmad",
      "age": "20",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT65f5zSK9VQLrEphmpw8eVaeMVng9N-JPlEpZKnJFXFth4U-KqHH-wX3Pz2TWNqqt3KLU&usqp=CAU"
    },
    {
      "name": "Ahmad",
      "age": "20",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmY81dvcpnTLaTaLNY73TTpuq_sawNoQzqXQ&usqp=CAU"
    },
    {
      "name": "Sara",
      "age": "25",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjLwYzVDPluO8TBZNlc00vmV4-sVeCPCm_1g&usqp=CAU"
    },
    {
      "name": "Ahmad",
      "age": "20",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT65f5zSK9VQLrEphmpw8eVaeMVng9N-JPlEpZKnJFXFth4U-KqHH-wX3Pz2TWNqqt3KLU&usqp=CAU"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Lists"),
        titleTextStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w800),
        leading: Padding(
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddPage(),
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
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: Data.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {},
                title: Text(Data[index]["name"]),
                subtitle: Text(Data[index]["age"]),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PostsPage(),
                          ));
                    },
                    icon: Icon(Icons.post_add)),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(Data[index]["imageUrl"]),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
