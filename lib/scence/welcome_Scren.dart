import 'package:flutter/material.dart';

import '../Widgets/start_page.dart';
import 'Home_Screen.dart'as pPrefix;

class welcomeScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/first.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Travel With Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "كوردستان هه‌م به‌پێی پاشماوه‌ شوێنه‌وارییه‌كان و هه‌م به‌پێی نوسراوی نێو كتێبه‌ پیرۆزه‌كان"
                  " جێگایه‌كی دیاری له‌مێژووی دنیادا هه‌یه‌، ئه‌ویش به‌پله‌ی یه‌كه‌م له‌و راستییه‌وه‌,"
                  " سه‌رچاوه‌ ده‌گرێت كه‌پاش روداوی لافاوه‌ گه‌وره‌كه‌ی كه‌شتی نوح له‌سه‌ر"
                  " چیای جودی له‌كوردستان له‌نگه‌ری گرتووه‌و جارێكی تر له‌م ده‌ڤه‌ره‌,"
                  " مرۆڤایه‌تی هه‌نگاوی بوژانه‌وه‌ی خۆی ناوه‌و له‌وێدا به‌دنیادا بڵاوبۆته‌وه‌. "
                  "له‌سۆنگه‌ی ئه‌م راستییه‌وه‌ جێی سه‌رسوڕمان نییه‌ كه‌یادگاری هه‌وه‌لینی مرۆڤ له‌كوردستان بوونی هه‌بێ،"
                  " وه‌كو ئه‌شكه‌وتی شانه‌ده‌ر له‌چیای برادۆست له‌ناوچه‌ی بارزان،"
                  " كه‌شوێنه‌واری ئیسكه‌ په‌یكه‌ری مرۆڤی نیاندرتالی لێدۆزراوه‌ته‌وه‌،"
                  " ته‌مه‌نی له‌(45-60) هه‌زار ساڵ ده‌بێ،"
                  " هه‌روه‌ها بۆ یه‌كه‌م جار كشتوكاڵ كردن له‌گوندی چه‌رموی رۆژهه‌ڵاتی چه‌مچه‌ماڵ كه‌كۆلینكاری"
                  " ئاركۆلۆژیانه‌ی لێكراوه‌ پاشماوه‌ی شینایی كردن و ماڵات به‌خێوكردنی لێ دۆزراوه‌ته‌وه‌."
                  " ئه‌مه‌ وێڕای ده‌یان شوێنه‌واری دیكه‌ كه‌قوڵایی شارستانیی كوردستان ده‌رده‌خه‌ن. ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 60),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => startPage(),
                        ));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
