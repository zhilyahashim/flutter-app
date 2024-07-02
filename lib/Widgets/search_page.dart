import 'package:flutter/material.dart';
import 'package:untitled/Widgets/start_page.dart';
import 'package:untitled/models/country_model.dart';
import 'package:untitled/scence/Home_Screen.dart';
import 'package:untitled/scence/welcome_Scren.dart';

class Search_page extends StatefulWidget {
  const Search_page({super.key});

  @override
  State<Search_page> createState() => _Search_pageState();
}

class _Search_pageState extends State<Search_page> {
  static List<CountryModel> main_country_list = [
    CountryModel("Hawler", 2000, 9,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVOVm75zYdjwepT4uiAC0CFD7b6lGgo98Z9g&usqp=CAU"),
    CountryModel(
      "Slemani",
      2000,
      7,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyrEe_SbSeAs95OFAGIBI7FngAwNmDXb53kw&usqp=CAU",
    ),
    CountryModel(
      "Duhok",
      2000,
      5,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo8izQjyoInUsNS79OqTm2JzQcDONLZy66ew&usqp=CAU",
    ),
    CountryModel(
      "Kirkuk",
      2000,
      3,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpruWxtFZRzk9NBCWYNhywYVJt2gGqXCqLeA&usqp=CAU",
    ),
    CountryModel(
      "Ahmadawa",
      2000,
      9.9,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbuKxRfo9VnJEPZ8S0wg9XIono8TNqZuvaWw&usqp=CAU",
    ),
    CountryModel(
      "Rwandiz",
      2000,
      8.9,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW8uOdQqsti2rqp3FJadWB8vANNk8S_JdELg&usqp=CAU",
    ),
  ];
  List<CountryModel> display_list = List.from(main_country_list);
  void updateLists(String value) {
    setState(() {
      display_list = main_country_list
          .where((element) => element.country_title!
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => startPage(),
                    ));
              },
              child: Ink(
                padding: EdgeInsets.all(10),
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
            SizedBox(
              height: 20.0,
            ),
            Text(
              "search here...",
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
                          display_list[index].country_title!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${display_list[index].country_release_year!}',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          "${display_list[index].rating!}",
                        ),
                        leading: Image.network(
                            display_list[index].country_poster_url!),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
