import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:sliding_card/sliding_card.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class Search extends StatelessWidget {
  
  List <String> list = ["1","2","3"];
  final otpController = TextEditingController();
  List <String> DeplaceList = ["Jaffna", "Colombo", "Vavuniya", "Mullaitivu"];

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
                          items: DeplaceList,
                          label: "Depature",
                          hint: "country in menu mode",
                          popupItemDisabled: (String s) => s.startsWith('I'),
                          onChanged: print,
                          selectedItem: "Colombo",
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
                          items: DeplaceList,
                          label: "Menu mode",
                          hint: "country in menu mode",
                          popupItemDisabled: (String s) => s.startsWith('I'),
                          onChanged: print,
                          popupBackgroundColor: Colors.blue[300],
                          selectedItem: "Jaffana"),

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
                            height: 115,
                            child: Center(child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),//or 15.0
                                          child: Container(
                                            height: 80.0,
                                            width: 80.0,
                                            color: Colors.blue,
                                            child: Image.asset('assets/images/new3.jpg',
                                            fit: BoxFit.cover,),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(

                                          children: [
                                            Column(
                                              children: [
                                                Text("Jaffna to Colombo", style: TextStyle(
                                                  fontWeight: FontWeight.w900
                                                ),),
                                                Text("Rs.6500.00"),
                                                OutlineButton(
                                                  color: Colors.blue[300],
                                                  onPressed: () {
                                                    return Alert(
                                                        context: context,
                                                        title: "OTP",
                                                        content: Column(
                                                          children: <Widget>[
                                                            TextField(
                                                              decoration: InputDecoration(
                                                                icon: Icon(Icons.phone),
                                                                labelText: 'Enter  OTP',
                                                              ),
                                                              keyboardType: TextInputType.number,
                                                              controller: otpController,
                                                            ),
                                                          ],
                                                        ),
                                                        buttons: [
                                                          DialogButton(
                                                            onPressed: () {
                                                              print(otpController.text);
                                                              if(otpController.text.isEmpty){
                                                                return     Alert(
                                                                  context: context,
                                                                  type: AlertType.warning,
                                                                  title: "OTP Empty",
                                                                  desc: "OTP Field Should be Filled.",
                                                                  buttons: [

                                                                    DialogButton(
                                                                      child: Text(
                                                                        "OK",
                                                                        style: TextStyle(color: Colors.white, fontSize: 20),
                                                                      ),
                                                                      onPressed: () => Navigator.pop(context),
                                                                      gradient: LinearGradient(colors: [
                                                                        Color.fromRGBO(116, 116, 191, 1.0),
                                                                        Color.fromRGBO(52, 138, 199, 1.0)
                                                                      ]),
                                                                    )
                                                                  ],
                                                                ).show();
                                                              }
                                                              else if(otpController.text != "1234"){

                                                                return Alert(
                                                                  context: context,
                                                                  type: AlertType.error,
                                                                  title: "Wrong OTP",
                                                                  desc: "OTP is Wrong Try Again.",
                                                                  buttons: [
                                                                    DialogButton(
                                                                      child: Text(
                                                                        "OK",
                                                                        style: TextStyle(color: Colors.white, fontSize: 20),
                                                                      ),
                                                                      onPressed: () => Navigator.pop(context),
                                                                      width: 120,
                                                                    )
                                                                  ],

                                                                ).show();
                                                              }
                                                              else{
                                                                Navigator.pop(context);
                                                                return Alert(
                                                                  context: context,
                                                                  title: "Success",
                                                                  desc: "Booking Confirmed",
                                                                  image: Image.asset("assets/images/sucess.webp"),
                                                                ).show();
                                                              }
                                                            },
                                                            child: Text(

                                                              "Booking Confirmed",
                                                              style: TextStyle(color: Colors.white, fontSize: 20),

                                                            ),
                                                          )
                                                        ]).show();
                                                  },
                                                  child: Text('Book'),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),

                                      )
                                    ],

                                  ),
                            )),
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
                            height: 115,
                            child: Center(child: Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),//or 15.0
                                      child: Container(
                                        height: 80.0,
                                        width: 80.0,
                                        color: Colors.blue,
                                        child: Image.asset('assets/images/new3.jpg',
                                          fit: BoxFit.cover,),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(

                                      children: [
                                        Column(
                                          children: [
                                            Text("Jaffna to Colombo", style: TextStyle(
                                                fontWeight: FontWeight.w900
                                            ),),
                                            Text("Rs.6500.00"),
                                            OutlineButton(
                                              color: Colors.blue[300],
                                              onPressed: () {
                                                return Alert(
                                                    context: context,
                                                    title: "OTP",
                                                    content: Column(
                                                      children: <Widget>[
                                                        TextField(
                                                          decoration: InputDecoration(
                                                            icon: Icon(Icons.phone),
                                                            labelText: 'Enter  OTP',
                                                          ),
                                                          keyboardType: TextInputType.number,
                                                          controller: otpController,
                                                        ),
                                                      ],
                                                    ),
                                                    buttons: [
                                                      DialogButton(
                                                        onPressed: () {
                                                          print(otpController.text);
                                                          if(otpController.text.isEmpty){
                                                            return     Alert(
                                                              context: context,
                                                              type: AlertType.warning,
                                                              title: "OTP Empty",
                                                              desc: "OTP Field Should be Filled.",
                                                              buttons: [

                                                                DialogButton(
                                                                  child: Text(
                                                                    "OK",
                                                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                                                  ),
                                                                  onPressed: () => Navigator.pop(context),
                                                                  gradient: LinearGradient(colors: [
                                                                    Color.fromRGBO(116, 116, 191, 1.0),
                                                                    Color.fromRGBO(52, 138, 199, 1.0)
                                                                  ]),
                                                                )
                                                              ],
                                                            ).show();
                                                          }
                                                          else if(otpController.text != "1234"){

                                                            return Alert(
                                                              context: context,
                                                              type: AlertType.error,
                                                              title: "Wrong OTP",
                                                              desc: "OTP is Wrong Try Again.",
                                                              buttons: [
                                                                DialogButton(
                                                                  child: Text(
                                                                    "OK",
                                                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                                                  ),
                                                                  onPressed: () => Navigator.pop(context),
                                                                  width: 120,
                                                                )
                                                              ],

                                                            ).show();
                                                          }
                                                          else{
                                                            Navigator.pop(context);
                                                            return Alert(
                                                              context: context,
                                                              title: "Success",
                                                              desc: "Booking Confirmed",
                                                              image: Image.asset("assets/images/sucess.webp"),
                                                            ).show();
                                                          }
                                                        },
                                                        child: Text(

                                                          "Booking Confirmed",
                                                          style: TextStyle(color: Colors.white, fontSize: 20),

                                                        ),
                                                      )
                                                    ]).show();
                                              },
                                              child: Text('Book'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  )
                                ],

                              ),
                            )),
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
                            height: 115,
                            child: Center(child: Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),//or 15.0
                                      child: Container(
                                        height: 80.0,
                                        width: 80.0,
                                        color: Colors.blue,
                                        child: Image.asset('assets/images/new3.jpg',
                                          fit: BoxFit.cover,),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(

                                      children: [
                                        Column(
                                          children: [
                                            Text("Jaffna to Colombo", style: TextStyle(
                                                fontWeight: FontWeight.w900
                                            ),),
                                            Text("Rs.6500.00"),
                                            OutlineButton(
                                              color: Colors.blue[300],
                                              onPressed: () {
                                                return Alert(
                                                    context: context,
                                                    title: "OTP",
                                                    content: Column(
                                                      children: <Widget>[
                                                        TextField(
                                                          decoration: InputDecoration(
                                                            icon: Icon(Icons.phone),
                                                            labelText: 'Enter  OTP',
                                                          ),
                                                          keyboardType: TextInputType.number,
                                                          controller: otpController,
                                                        ),
                                                      ],
                                                    ),
                                                    buttons: [
                                                      DialogButton(
                                                        onPressed: () {
                                                          print(otpController.text);
                                                          if(otpController.text.isEmpty){
                                                            return     Alert(
                                                              context: context,
                                                              type: AlertType.warning,
                                                              title: "OTP Empty",
                                                              desc: "OTP Field Should be Filled.",
                                                              buttons: [

                                                                DialogButton(
                                                                  child: Text(
                                                                    "OK",
                                                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                                                  ),
                                                                  onPressed: () => Navigator.pop(context),
                                                                  gradient: LinearGradient(colors: [
                                                                    Color.fromRGBO(116, 116, 191, 1.0),
                                                                    Color.fromRGBO(52, 138, 199, 1.0)
                                                                  ]),
                                                                )
                                                              ],
                                                            ).show();
                                                          }
                                                          else if(otpController.text != "1234"){

                                                            return Alert(
                                                              context: context,
                                                              type: AlertType.error,
                                                              title: "Wrong OTP",
                                                              desc: "OTP is Wrong Try Again.",
                                                              buttons: [
                                                                DialogButton(
                                                                  child: Text(
                                                                    "OK",
                                                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                                                  ),
                                                                  onPressed: () => Navigator.pop(context),
                                                                  width: 120,
                                                                )
                                                              ],

                                                            ).show();
                                                          }
                                                          else{
                                                            Navigator.pop(context);
                                                            return Alert(
                                                              context: context,
                                                              title: "Success",
                                                              desc: "Booking Confirmed",
                                                              image: Image.asset("assets/images/sucess.webp"),
                                                            ).show();
                                                          }
                                                        },
                                                        child: Text(

                                                          "Booking Confirmed",
                                                          style: TextStyle(color: Colors.white, fontSize: 20),

                                                        ),
                                                      )
                                                    ]).show();
                                              },
                                              child: Text('Book'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  )
                                ],

                              ),
                            )),
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
                            height: 115,
                            child: Center(child: Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),//or 15.0
                                      child: Container(
                                        height: 80.0,
                                        width: 80.0,
                                        color: Colors.blue,
                                        child: Image.asset('assets/images/new3.jpg',
                                          fit: BoxFit.cover,),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(

                                      children: [
                                        Column(
                                          children: [
                                            Text("Jaffna to Colombo", style: TextStyle(
                                                fontWeight: FontWeight.w900
                                            ),),
                                            Text("Rs.6500.00"),
                                            OutlineButton(
                                              color: Colors.blue[300],
                                              onPressed: () {
                                                return Alert(
                                                    context: context,
                                                    title: "OTP",
                                                    content: Column(
                                                      children: <Widget>[
                                                        TextField(
                                                          decoration: InputDecoration(
                                                            icon: Icon(Icons.phone),
                                                            labelText: 'Enter  OTP',
                                                          ),
                                                          keyboardType: TextInputType.number,
                                                          controller: otpController,
                                                        ),
                                                      ],
                                                    ),
                                                    buttons: [
                                                      DialogButton(
                                                        onPressed: () {
                                                          print(otpController.text);
                                                          if(otpController.text.isEmpty){
                                                            return     Alert(
                                                              context: context,
                                                              type: AlertType.warning,
                                                              title: "OTP Empty",
                                                              desc: "OTP Field Should be Filled.",
                                                              buttons: [

                                                                DialogButton(
                                                                  child: Text(
                                                                    "OK",
                                                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                                                  ),
                                                                  onPressed: () => Navigator.pop(context),
                                                                  gradient: LinearGradient(colors: [
                                                                    Color.fromRGBO(116, 116, 191, 1.0),
                                                                    Color.fromRGBO(52, 138, 199, 1.0)
                                                                  ]),
                                                                )
                                                              ],
                                                            ).show();
                                                          }
                                                          else if(otpController.text != "1234"){

                                                            return Alert(
                                                              context: context,
                                                              type: AlertType.error,
                                                              title: "Wrong OTP",
                                                              desc: "OTP is Wrong Try Again.",
                                                              buttons: [
                                                                DialogButton(
                                                                  child: Text(
                                                                    "OK",
                                                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                                                  ),
                                                                  onPressed: () => Navigator.pop(context),
                                                                  width: 120,
                                                                )
                                                              ],

                                                            ).show();
                                                          }
                                                          else{
                                                            Navigator.pop(context);
                                                            return Alert(
                                                              context: context,
                                                              title: "Success",
                                                              desc: "Booking Confirmed",
                                                              image: Image.asset("assets/images/sucess.webp"),
                                                            ).show();
                                                          }
                                                        },
                                                        child: Text(

                                                          "Booking Confirmed",
                                                          style: TextStyle(color: Colors.white, fontSize: 20),

                                                        ),
                                                      )
                                                    ]).show();
                                              },
                                              child: Text('Book'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  )
                                ],

                              ),
                            )),
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
                            height: 115,
                            child: Center(child: Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),//or 15.0
                                      child: Container(
                                        height: 80.0,
                                        width: 80.0,
                                        color: Colors.blue,
                                        child: Image.asset('assets/images/new3.jpg',
                                          fit: BoxFit.cover,),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(

                                      children: [
                                        Column(
                                          children: [
                                            Text("Jaffna to Colombo", style: TextStyle(
                                                fontWeight: FontWeight.w900
                                            ),),
                                            Text("Rs.6500.00"),
                                            OutlineButton(
                                              color: Colors.blue[300],
                                              onPressed: () {
                                                return Alert(
                                                    context: context,
                                                    title: "OTP",
                                                    content: Column(
                                                      children: <Widget>[
                                                        TextField(
                                                          decoration: InputDecoration(
                                                            icon: Icon(Icons.phone),
                                                            labelText: 'Enter  OTP',
                                                          ),
                                                          keyboardType: TextInputType.number,
                                                          controller: otpController,
                                                        ),
                                                      ],
                                                    ),
                                                    buttons: [
                                                      DialogButton(
                                                        onPressed: () {
                                                          print(otpController.text);
                                                          if(otpController.text.isEmpty){
                                                            return     Alert(
                                                              context: context,
                                                              type: AlertType.warning,
                                                              title: "OTP Empty",
                                                              desc: "OTP Field Should be Filled.",
                                                              buttons: [

                                                                DialogButton(
                                                                  child: Text(
                                                                    "OK",
                                                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                                                  ),
                                                                  onPressed: () => Navigator.pop(context),
                                                                  gradient: LinearGradient(colors: [
                                                                    Color.fromRGBO(116, 116, 191, 1.0),
                                                                    Color.fromRGBO(52, 138, 199, 1.0)
                                                                  ]),
                                                                )
                                                              ],
                                                            ).show();
                                                          }
                                                          else if(otpController.text != "1234"){

                                                            return Alert(
                                                              context: context,
                                                              type: AlertType.error,
                                                              title: "Wrong OTP",
                                                              desc: "OTP is Wrong Try Again.",
                                                              buttons: [
                                                                DialogButton(
                                                                  child: Text(
                                                                    "OK",
                                                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                                                  ),
                                                                  onPressed: () => Navigator.pop(context),
                                                                  width: 120,
                                                                )
                                                              ],

                                                            ).show();
                                                          }
                                                          else{
                                                            Navigator.pop(context);
                                                            return Alert(
                                                              context: context,
                                                              title: "Success",
                                                              desc: "Booking Confirmed",
                                                              image: Image.asset("assets/images/sucess.webp"),
                                                            ).show();
                                                          }
                                                        },
                                                        child: Text(

                                                          "Booking Confirmed",
                                                          style: TextStyle(color: Colors.white, fontSize: 20),

                                                        ),
                                                      )
                                                    ]).show();
                                              },
                                              child: Text('Book'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  )
                                ],

                              ),
                            )),
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


