import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget{
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
                  Text("Hawler, Kurdistan",style: TextStyle(
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
              Text("هەندێ لە زانایان، هەولێر و هەرێمی كوردستان بەلانكەی مرۆڤایەتی دەزانن،"
                  " چونكە ئەشكەوتی شانەدەر باشترین بەلگەی مێژوویی مرۆڤە بەوپێیەی كە"
                  " ئەشكەویتێكە لە جیهان گرنگی تایبەتی هەیە و كەوتووەتە نزیك شاری هەولێر)."
                      "تەمەنی ئێسكبەندەكان كە بۆ"
                  "     60 تا 65 هەزار  ساڵ پێش زاین دەگەرێتەوە بەرێگەی زانستی سەلمێنراوە بەدرێژایی مێژوو،"
              "تا ئێستا هیچ رۆژگارێكی ئەو ناوچەیە واتا ئەشكەوتەكە و شاری هەولێر بێ مرۆڤ و دانیشتوان نەبوونە"
                "  . هەولێر كۆنترنی شاری جیهانە تا ئێستا بە ئاوەدانی ماوەتەوە"
                  ". شاریش تا كۆنتر بێت مێژووەكەی ئالۆزتر دەبێت بە  تایبەتی شارێكی وەك. "
                  "هەولێر كە زۆربەری راكان بۆچوونیان وایە ئەم شارە پێش پەیدابوونی نووسین دروستكراوە."
                  " كە خەت و نووسین لە داهێنانی سۆمەریەكانە پاش ئەوەی سۆمەریەكان لە هەولێر "
                  "و كوردستان دەچنە خوارەوە لە ساڵی 3200ی پ.ز، خەت و نووسین لە هەولێر دادەهێنن."
                  " بە پێی زانیاری ئینسایكلۆپیدیای بەریتانیا بە شاری هەولێر گوتراوە (ئۆربل)"
                  " وە ئاماژەش بەوە كراوە كە شاری هەولێر لەلایەن باپیرانی سۆمەریەكان دروستكراوە."
                  " هەروەها میژووی شاری هەولێریش بۆ 6000 هەزار ساڵأ پ.ز دەگەرێنێتەوە."
                  " لەو ئینسایكلۆپیدیایە جگە لە باسی كورد و سۆمەریەكان لەو"
                  " ناوچەیەدا ناوی هیچ میللەت و نەتەوەیەكی تری نەهێنراوە.",
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
                      child: Image.asset("images/city1.jpeg",
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