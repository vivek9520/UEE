import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:uee_project/Service/LastBooking.dart';

class DiscountDetails extends StatefulWidget {
  @override
  _DiscountDetailsState createState() => _DiscountDetailsState();
}

class _DiscountDetailsState extends State<DiscountDetails> {
  List <LastBooking> lastBooking =[
    LastBooking("t.jpg", "Vavuniya", 20000),
    LastBooking("tt.jpg", "Jaffna", 40000),
    LastBooking("k.jpeg", "Mullaitivu", 50000),
    LastBooking("tt.jpg", "Jaffna", 40000),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Discount Pack", style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: width/2.5,
                height: 200,
                child: Container(
                  color: Colors.blue[50],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,10,3,0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: new BorderRadius.circular(10.0),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/t.jpg'),
                            width: 150.0,
                            height: 100.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1,2,1,0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/images/fort.jpg'),
                                    width: 72.0,
                                    height: 50.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/images/tt.jpg'),
                                    width: 72.0,
                                    height: 50.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width-(width/2.5),
                height: 200,
                child: Container(
                  color: Colors.blue[50],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Package ID :",
                            style: TextStyle(
                              fontWeight: FontWeight.w700
                            ),),
                          ),
                          Text("DIS002 "),
                        ],
                      ),
                      Divider(
                        height: 1,
                        color: Colors.blue,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Pack Name :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700
                              ),),
                          ),
                          Text("Jaffna Plus "),
                        ],
                      ),
                      Divider(
                        height: 1,
                        color: Colors.blue,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Pack Price :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700
                              ),),
                          ),
                          Text("Rs.22000.00"),
                        ],
                      ),
                      Divider(
                        height: 1,
                        color: Colors.blue,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Pack Discount :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blueGrey[900]
                              ),),
                          ),
                          Text("Rs.2000.00" ,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.red
                            ),),
                        ],
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
         Divider(
           height: 3,
           color: Colors.blue,
         ),
         SizedBox(
           height: 500,
           child: Scaffold(
             backgroundColor: Colors.blue[50],
             body: Column(
               children: [
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
                       child: Text("Review",
                       style: TextStyle(
                         fontWeight: FontWeight.w900,
                       ), textAlign:TextAlign.center ,),
                     ),
                   ],
                 ),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
                       child: SmoothStarRating(
                           allowHalfRating: false,
                           onRated: (v) {
                           },
                           starCount: 5,
                           rating: 3,
                           size: 30.0,
                           isReadOnly:true,
                           //fullRatedIconData: Icons.blur_off,
                          // halfRatedIconData: Icons.blur_on,
                           color: Colors.blue,
                           borderColor: Colors.blue,
                           spacing:0.0
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(200.0,0,0,0),
                       child: Text("3",
                       style: TextStyle(
                         fontWeight: FontWeight.w900,
                         fontSize: 18,
                         color: Colors.blue
                       ),),
                     ),
                   ],
                 ),
                 Divider(
                   height: 1,
                   color: Colors.blue,
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20.0,8,0,0),
                   child: Text("Comments",
                     style: TextStyle(
                       fontWeight: FontWeight.w900,
                     ), textAlign:TextAlign.center ,),
                 ),
                 SingleChildScrollView(
                   child: SizedBox(
                     height: 400,
                     child: Scaffold(
                       backgroundColor: Colors.blue[50],
                       body: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ListView.builder(
                           itemExtent: 90.0,
                           itemCount: lastBooking.length,
                           itemBuilder: (context,index){
                             return Card(
                               child: ListTile(
                                 onTap: (){},
                                 title: Text(lastBooking[index].name),
                                 subtitle: Text(lastBooking[index].amount.toString()),
                                 tileColor: Colors.blue[200],
                                 leading: CircleAvatar(
                                   radius: 30,
                                   backgroundColor: Colors.red,
                                   child: CircleAvatar(
                                     radius: 50,
                                     backgroundImage: AssetImage('assets/images/${lastBooking[index].url}'),
                                   ),

                                 ),


                               ),
                             );
                           },
                         ),
                       ),
                     ),
                   ),
                 ),

               ],

             ),

           ),
         ),

        ],
      ),
    );
  }
}
