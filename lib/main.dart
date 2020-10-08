import 'package:flutter/material.dart';
import 'package:uee_project/HomePage/search.dart';

import 'HomePage/homePageMain.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("JPR BOOKING", style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 25
        ),),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("J.Vivek", style: TextStyle(
                  fontWeight: FontWeight.w900
                ),
                ),
                accountEmail: Text("Vivekjeevanarajh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text("Search"),
              leading: Icon(Icons.search),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text("Booking"),
              leading: Icon(Icons.book_online),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            Divider(
              height: 1,
            )
          ],
        ),
      ),
      body: Search(),
    );
  }
}