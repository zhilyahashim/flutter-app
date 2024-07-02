import 'package:flutter/material.dart';

class  AhmadawaBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/2,
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)
          )
      ),
      child: ListView(
        children: [
          Padding(padding: EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ahmadawa, Kurdistan",style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.amber,
                          size: 25,),
                        Text("4.5",style: TextStyle(
                          fontWeight: FontWeight.w600,

                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 25,),
                Text("A beautiful waterfall in the hawraman region situated 84 km "
                    "East of Sulaymaniyah and near the town of khurmall."
                    "It is in a rich, green vally,crossed by the Zallim River that flows down "
                    "the middle of the mountain . A waterfall adds extra beauty to the surroundings.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,

                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 5),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("images/city5.jpeg",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 90,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 5),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("images/city5.jpeg",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 90,
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 90,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("images/city6.jpeg"),
                            fit: BoxFit.cover,
                            opacity: 0.4,
                          )

                      ),
                      child: Text("10+",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),),
                    ))
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black,
                              blurRadius: 4,

                            )]
                        ),
                        child: Icon(Icons.bookmark_outline,size: 40,),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent,
                            boxShadow: [BoxShadow(
                              color: Colors.black,
                              blurRadius: 4,
                            )]
                        ),
                        child: Text("Book Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),



        ],
      ),
    );
  }
}