import 'package:flutter/material.dart';
import 'main.dart';
import 'item.dart';
import 'information.dart';
import 'dart:html';


class BrowsingPage extends StatefulWidget {
  BrowsingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BrowsingPageState createState() => _BrowsingPageState();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

var browsing_items = [
          [
            0,
            "The secret history of Hope the blue whale",
            AssetImage("assets/blue-whale-front-full-width.png"),
            Alignment(0.0, 1.0),
          ], 
          [ 1,
            "Could giraffes become Extinct?",
            AssetImage("assets/giraffe-2879527_1920.png"),
            Alignment(0.0, 1.0),
          ],
          [
            2,
            "Evolution and taxonomy of African elephants", 
            AssetImage("assets/elephant-1049838_1280.png"),
            Alignment(10.0, 0.0),
          ],
      ]; 

class _BrowsingPageState extends State<BrowsingPage> {
Image cardFront;
  Image cardBack;
  bool showFront = true;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Color.fromRGBO(65, 65, 65, 1),
    body: Column(
      children: [
        Stack(
          children: [ 
  
            Row(
             children: [
              Flexible(
                flex: 10,
                child: Container(

                  margin: const EdgeInsets.only(left: 10.0),
                  child: Transform(
                    transform: Matrix4.rotationY(
                      -9.5
                    ),
                    alignment: Alignment.center,              
                    child: Container(

                      height: 300,
                      alignment: Alignment.center,
                      child: Image(
                     image: AssetImage('assets/wild-1280151_1920.png')
                  ),
                    ),
                  ),
                ),
              ),

              Flexible(
                flex: 10,
                child: Container(
                  child: Column(
                    children: [

                      Container(
                        height: 45,
                        margin: const EdgeInsets.only(top: 20.0, left: 10.0, bottom:  20.0),
                        child: Image(
                          image: AssetImage('assets/logo.png')
                        ),
                      ),

                      Text(
                        "MAMMALS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ),
            ],
          ),

          GestureDetector(
                onTap: (){
                    Navigator.pop(context);
                },
                                                    
                child: Container(
                    height: 120,
                    width: 50,
                                                      
                    margin: const EdgeInsets.only(left: 40.0, bottom: 0.0, right: 40.0, top: 30.0),

                    child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                            width: 50.0,
                            decoration: new BoxDecoration(
                              boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(5, 5), // changes position of shadow
                                  ),
                              ],

                              color: Color.fromRGBO(226, 106, 106, 20),
                                                          
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage("assets/round_undo_white_48dp.png"), scale: 3.5)
                                                              
                            ),
                                                          
                          ),
                        ),
                     ),
                   ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingItem()),
              );
            },
            child: Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 240),

              decoration: new BoxDecoration(
                boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(5, 5), // changes position of shadow
                    ),
                ],
                
                shape: BoxShape.rectangle,

                borderRadius:BorderRadius.all(
                  Radius.circular(40),
                ),
                border: Border.all(
                  width: 6,
                  color: Colors.white
                ),

                
                image: DecorationImage(image: AssetImage("assets/blue-whale-underwater-skinny-full-width.jpg"), fit: BoxFit.fill)                     
              ),    

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 25, left: 30),
                      width: 150,
                      child: Text(
                        "Hope: The story of the blue whale",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(bottom: 25, right: 0, left: 26),
                      child: Text(
                        "SHOP",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(bottom: 20, left: 10),
                      child: Image(
                        image: AssetImage("assets/baseline_local_mall_white_48dp.png"),
                        width: 40,
                      )
                    )
                ],
              ),                        
            ),
          ),
         ]
        ), 

         Flexible(
            child: Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 0, top: 0),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                    child: ListView(

                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                        children: <Widget>[
                          for(var item in browsing_items )
                            Container(
                              child: GestureDetector(
                                  onTap: (){
                                      if(item[0] == 0){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => InformationPage()),);
                                      } else if(item[0] == 1){
                                        /*Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => NewBooking(Bookings(0,0,'',0,''), 'Create Booking')),
                                          );*/
                                      } else{
                                        /*Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => NewTrip(Trips(0, 0, 0, '', 0, 0), 'Add Trip' )),
                                        );*/
                                      }

                                  },
                                      
                                child: Container(
                                  width: double.infinity,
                                  height: 140,
                                  margin: const EdgeInsets.only(bottom: 0, top: 20),
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 20),
                                          child: Image(
                                            image: item[2],
                                            height: 90,
                                            width: 100,
                                            alignment: item[3],
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(left: 25),
                                          width: 140,
                                          child: Text(
                                            item[1],
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                        ),
                                        ),
                                      ],
                                    ),
                                  )
                                ),
                              ),
                          ),
                      ],
                    ),
                ),
              ),
            )
          ),

      
      ],
    )
  );
 } 
}