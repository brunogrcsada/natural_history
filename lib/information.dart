import 'package:flutter/material.dart';
import 'dart:html';

class InformationPage extends StatefulWidget {
  InformationPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InformationPageState createState() => _InformationPageState();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class _InformationPageState extends State<InformationPage> {
  
  @override
  Widget build(BuildContext context) {
   

    return new Scaffold(
      backgroundColor: Color.fromRGBO(65, 65, 65, 1),
      body: Center(
        child: Column(
          children: [
            Flexible(
              flex: 2,
               child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top:70, left: 30, right: 30),
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        
                        border: Border.all(
                            width: 6,
                            color: Colors.white
                        ),

                        image: DecorationImage(image: AssetImage("assets/1934-installation-blue-whale-baby-hero.jpg"), fit: BoxFit.contain, alignment: Alignment(0.0, -1.0)),

                        borderRadius:BorderRadius.all(
                              Radius.circular(40)
                        ),

                      ),
                  ),
                  

                  Flexible(
                    flex: 1,
                      child: GestureDetector(
                        onTap: (){
                           Navigator.pop(context);
                        },
                                                
                        child: Container(
                          height: 120,
                          width: 50,
                                                  
                          margin: const EdgeInsets.only(left:25.0, bottom: 0.0, right: 0.0, top: 16.0),

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
                  ),

                    Container(
                      margin: const EdgeInsets.only(top: 290, left: 26, right: 26),
                      child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Column(
                            children: [
                               Container(
                                   margin: const EdgeInsets.only(left: 40, top: 30, right: 50),
                                   child: Text(
                                     "The secret history of Hope the blue whale has finally been revealed",
                                      textAlign: TextAlign.start,
                                        style: TextStyle(
                                           fontFamily: 'Montserrat',
                                           fontSize: 20,
                                           fontWeight: FontWeight.w600,
                                           color: Colors.black
                                        ),
                                        
                                    ),
                                ),
                                
                                Container(
                                    margin: const EdgeInsets.only(left: 40, top: 20, right: 50, bottom: 40),
                                    child: Text(
                                        "New research looking at the chemical make-up of Hope's baleen plates has revealed where the blue whale travelled in the last seven years of her life!",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                           fontFamily: 'Montserrat',
                                           fontSize: 17,
                                           color: Colors.black
                                        ),
                                    ),
                                ),
                            ],
                          ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          
                        });
                        

                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                                            child: Flexible(
                        flex: 1,
                          child: Container(
                            height: 120,
                            width: 50,
                                                    
                            margin: const EdgeInsets.only(left:0.0, bottom: 0.0, right: 47.0, top: 490.0),

                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Container(
                                    width: 50.0,
                                    decoration: new BoxDecoration(
                                        boxShadow: [
                                            BoxShadow(
                                                  color: Colors.black.withOpacity(0.2),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: Offset(5, 5), // changes position of shadow
                                            ),
                                        ],

                                        color: Color.fromRGBO(240, 150, 100, 1),
                                                      
                                        shape: BoxShape.circle,
                                        image: DecorationImage(image: AssetImage("assets/round_volume_up_white_48dp.png"), scale: 3.5)
                                                          
                                    ),
                                                        
                                ),
                            ),
                          ),
                  ),
                      ),
                    ),
                ],
              ),
            ),

            Flexible(
                flex: 2,
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
                              Container(
                              margin: const EdgeInsets.only(top: 50, left: 0, right: 0),
                              child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: Column(
                                    children: [
                                    
                                        
                                        Container(
                                            margin: const EdgeInsets.only(left: 40, top: 20, right: 50, bottom: 20),
                                            child: Text(
                                                "On the 25 March 1891, a blue whale migrating up the east coast of Ireland was caught and stranded on a sandbar just out from the harbour town of Wexford. ",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 17,
                                                  color: Colors.black
                                                ),
                                            ),
                                        ),
                                        
                                    ],
                                  ),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 40, left: 0, right: 0, bottom: 40),
                              child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: Column(
                                    children: [
                                    
                                        Container(
                                            margin: const EdgeInsets.only(left: 40, top: 20, right: 50, bottom: 30),
                                            child: Text(
                                                "The whale was young and not yet fully grown, but that didn't stop the locals from taking great interest in the 25.2-metre leviathan from the deep that had been grounded so close to shore.",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 17,
                                                  color: Colors.black
                                                ),
                                            ),
                                        ),
                                        
                                    ],
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
        ),
         
      )
     );
  }
}