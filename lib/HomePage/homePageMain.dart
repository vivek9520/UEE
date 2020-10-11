

import 'package:flutter/material.dart';
import 'package:flutter_mobile_carousel/carousel_arrow.dart';

import 'package:uee_project/HomePage/Silider.dart';
import 'package:flutter_mobile_carousel/carousel.dart';
import 'package:uee_project/HomePage/discountDetails.dart';
import 'package:uee_project/Service/LastBooking.dart';
import 'package:uee_project/Service/discount.dart';
import 'package:uee_project/Service/newPlan.dart';

import 'newPlanDetails.dart';

class HomeMain extends StatelessWidget {

  List<String> items =["1","2","3","4"];

  List <LastBooking> lastBooking =[
    LastBooking("t.jpg", "Vavuniya", 20000),
    LastBooking("tt.jpg", "Jaffna", 40000),
    LastBooking("k.jpeg", "Mullaitivu", 50000),
    LastBooking("tt.jpg", "Jaffna", 40000),
  ];

  List <NewPlan> newPlan =[
    NewPlan("bus3.jpg", "Vavuniya","Jaffna To Colombo", 20000.0,200),
    NewPlan("car3.jpg", "Galle","Jaffna To Colombo", 20000.0,200),
    NewPlan("van2.jpg", "Kandy","Jaffna To Colombo", 20000.0,200),
    NewPlan("bus1.png", "Nuwareliya","Jaffna To Colombo", 20000.0,200),

  ];

  List <Discount> discount =[
    Discount("car2.webp", "Vavuniya 10%","Jaffna To Colombo", 20000.0,200),
    Discount("van1.jpg", "Colombo 5%","Jaffna To Colombo", 20000.0,200),
    Discount("car4.jpeg", "Mullaitivu 6%","Jaffna To Colombo", 20000.0,200),
    Discount("car3.jpg", "Vavuniya 4%","Jaffna To Colombo", 20000.0,200),

  ];


  @override
  Widget build(BuildContext context) {
    const double ARROW_WIDTH = 20.0;
    const double ARROW_ICON_SIZE = 18.0;

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text("Home", style: TextStyle(
            fontWeight: FontWeight.w900
        ),),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
      ),
      body:Column(
        children: [
          SizedBox(
            height: 200,
            child: Silider(),
          ),
          SizedBox(
            height: 5,
            child: Container(
              color: Colors.blue[50],
            ),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.blue[500],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("New Plans", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
            ),),
          ),
          SizedBox(
            height: 3,
            child: Container(
              color: Colors.blue[100],
            ),
          ),
          Carousel(
            rowCount: 3,
            leftArrow: CarouselArrow(
              width: ARROW_WIDTH,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.chevron_left,
                  size: ARROW_ICON_SIZE,
                ),
              ),
            ),
            rightArrow: CarouselArrow(
              width: ARROW_WIDTH,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.chevron_right,
                  size: ARROW_ICON_SIZE,
                ),
              ),
            ),
            onDragStart: (DragStartDetails details) {},
            onDrag: (DragUpdateDetails details) {},
            onDragEnd: (DragEndDetails details) {},
            children: this.newPlan.map((NewPlan itemText) {
              return InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewPlanDetails()));
                },
                child:  _buildProgrammCardNewPlan(itemText)
              );
                _buildProgrammCardNewPlan(itemText);
            }).toList(),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.blue[500],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Discounts Packs", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
            ),),
          ),
          SizedBox(
            height: 3,
            child: Container(
              color: Colors.blue[100],
            ),
          ),
          Carousel(
            rowCount: 3,
            leftArrow: CarouselArrow(
              width: ARROW_WIDTH,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.chevron_left,
                  size: ARROW_ICON_SIZE,
                ),
              ),
            ),
            rightArrow: CarouselArrow(
              width: ARROW_WIDTH,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.chevron_right,
                  size: ARROW_ICON_SIZE,
                ),
              ),
            ),
            onDragStart: (DragStartDetails details) {},
            onDrag: (DragUpdateDetails details) {},
            onDragEnd: (DragEndDetails details) {},
            children: this.discount.map((Discount itemText ) {
              return InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DiscountDetails()));
                },
                  child: _buildProgrammCardDiscount(itemText)
              );
            }).toList(),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.blue[500],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Last Booking", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
            ),),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.blue[500],
            ),
          ),

          SizedBox(
            height: 10,
            child: Container(
              color: Colors.blue[50],
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: 90,
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
    );
  }
}


Widget _buildProgrammCard(LastBooking l) {
  return Container(
    height: 250,
    child: Card(

      child: Image.asset(
        'assets/images/${l.url}',
        width: 50,
        height: 30,
        fit: BoxFit.cover,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),

    ),

  );
}

Widget _buildProgrammCardNewPlan(NewPlan l) {
  return Container(
    height: 250,
    child: Column(
      children: [
        Card(

          child: Image.asset(
            'assets/images/${l.url}',
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),

        ),
        Text(l.planName)
      ],
    ),

  );
}

Widget _buildProgrammCardDiscount(Discount l) {
  return Container(
    height: 250,
    child: Column(
      children: [
        InkWell(
          onTap: (){
          },
          child: Card(
            child: Image.asset(
              'assets/images/${l.url}',
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),

          ),
        ),
        Text(l.planName)
      ],
    ),

  );
}
