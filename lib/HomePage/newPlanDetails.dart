import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:uee_project/Service/LastBooking.dart';
import 'package:uee_project/Service/comments.dart';


class NewPlanDetails extends StatefulWidget {
  @override
  _NewPlanDetailsState createState() => _NewPlanDetailsState();
}

List <Comments> comments =[
  Comments( "Mr.Nimalan","Good Service", "b.png"),
  Comments( "Mr.Thenesh","Best Service", "b.jpg"),
  Comments( "Mis.Mohan","Good Price", "bb2.jpg"),
  Comments( "Miss.Vinothini","Confortable Service", "gg.png"),
  Comments( "Mr.Surenthiran","Good Service", "gg2.png"),


];

class _NewPlanDetailsState extends State<NewPlanDetails> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("New Plan Pack", style: TextStyle(
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
                            padding: const EdgeInsets.fromLTRB(8.0,8,0,2),
                            child: Text("Package ID :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700
                              ),),
                          ),
                          Text("NPN002 "),
                        ],
                      ),
                      Divider(
                        height: 1,
                        color: Colors.blue,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,8,0,2),
                            child: Text("Pack Name :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700
                              ),),
                          ),
                          Text("Colombo pick "),
                        ],
                      ),
                      Divider(
                        height: 1,
                        color: Colors.blue,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,8,0,2),
                            child: Text("Pack Price :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700
                              ),),
                          ),
                          Text("Rs.27000.00"),
                        ],
                      ),
                      Divider(
                        height: 1,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,8,0,2),
                        child: Text("Pack Discreption:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.blueGrey[900]
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Travelling Places such as Jaffna, kilinochi, Vavuniya, Anurathapura And Colombo " ,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.blue[900]
                          ),),
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
                            rating: 4,
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
                        child: Text("4",
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
                            itemCount: comments.length,
                            itemBuilder: (context,index){
                              return Card(
                                  child: ListTile(
                                    onTap: (){},
                                    title: Text(comments[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blue[900]
                                      ),),
                                    subtitle: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(100.0,6,0,0),
                                          child: Text(comments[index].comment.toString()),
                                        ),
                                      ],
                                    ),
                                    tileColor: Colors.blue[200],
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),//add border radius here
                                      child: Image.asset('assets/images/${comments[index].img}',
                                        height: 150,
                                        width: 100,
                                        fit: BoxFit.fill,),//add image location here
                                    ),
                                  ));
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
    );;
  }
}
