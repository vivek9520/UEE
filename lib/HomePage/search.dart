import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:sliding_card/sliding_card.dart';



class Search extends StatelessWidget {
  
  List <String> list = ["1","2","3"];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Search", style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        color: Colors.blue[100],
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: width/2,
                  height: 70,
                  child: Scaffold(
                    backgroundColor: Colors.blue[100],
                    body:Padding(
                      padding: const EdgeInsets.fromLTRB(2.0,15.0,2.0,0),
                      child: DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSelectedItem: true,
                          items: ["Brazil", "Italia", "Tunisia", 'Canada',"Brazil", "Italia", "Tunisia", 'Canada'],
                          label: "Depature",
                          hint: "country in menu mode",
                          popupItemDisabled: (String s) => s.startsWith('I'),
                          onChanged: print,
                          selectedItem: "Brazil",
                      popupBackgroundColor: Colors.blue[300],),
                    ),
                  ),
                ),
                SizedBox(
                  width: width/2,
                  height: 70,
                  child: Scaffold(
                    backgroundColor: Colors.blue[100],
                    body: Padding(
                      padding: const EdgeInsets.fromLTRB(2.0,15.0,2.0,0),
                      child: DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSelectedItem: true,
                          items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                          label: "Menu mode",
                          hint: "country in menu mode",
                          popupItemDisabled: (String s) => s.startsWith('I'),
                          onChanged: print,
                          popupBackgroundColor: Colors.blue[300],
                          selectedItem: "Brazil"),

                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height-300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:ListView(
                  children: [
                    Center(
                      child: Card(
                        color: Colors.blue[50],
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: (){

                          },
                          child: Container(
                            width: 400,
                            height: 100,
                            child: Text("Data"),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.blue[900]
                    ),
                    Center(
                      child: Card(
                        color: Colors.blue[50],
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: (){

                          },
                          child: Container(
                            width: 400,
                            height: 100,
                            child: Text("Data"),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                        height: 10,
                        color: Colors.blue[900]
                    ),
                    Center(
                      child: Card(
                        color: Colors.blue[50],
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: (){

                          },
                          child: Container(
                            width: 400,
                            height: 100,
                            child: Text("Data"),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                        height: 10,
                        color: Colors.blue[900]
                    ),
                    Center(
                      child: Card(
                        color: Colors.blue[50],
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: (){

                          },
                          child: Container(
                            width: 400,
                            height: 100,
                            child: Text("Data"),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                        height: 10,
                        color: Colors.blue[900]
                    ),
                    Center(
                      child: Card(
                        color: Colors.blue[50],
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: (){

                          },
                          child: Container(
                            width: 400,
                            height: 100,
                            child: Text("Data"),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                        height: 10,
                        color: Colors.blue[900]
                    ),
                  ],
                ) ,
              ),
            )
          ],
        ),
      ),


    );
  }
}


