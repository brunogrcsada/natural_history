import 'dart:html';

import 'package:flutter/material.dart';
import 'shopping.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Natural History Digital'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var list = [
                [
                  "Dinosaur", 
                  [Color.fromRGBO(255, 185, 135, 1), Color.fromRGBO(255, 185, 135, 200)],
                  AssetImage("dinosaur-3149580.png") 
                ], 
                [ 
                  "Reptile", 
                  [Color.fromRGBO(255, 185, 135, 1), Color.fromRGBO(255, 185, 135, 200)],
                  AssetImage("dinosaur-3149580.png") 
                ],
                [
                  "Minerals",
                  [Color.fromRGBO(255, 185, 135, 1), Color.fromRGBO(255, 185, 135, 200)],
                  AssetImage("dinosaur-3149580.png") 
                ],
                [

                  "Something",
                  [Color.fromRGBO(255, 185, 135, 1), Color.fromRGBO(255, 185, 135, 200)],
                  AssetImage("dinosaur-3149580.png") 
                ]
             ]; 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(65, 65, 65, 1),
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Container(

                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(top:14.0),
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    flex: 1, 
                                    child: Container(
                                      margin: const EdgeInsets.all(30.0),
                                      child: Image(image: AssetImage('account.png')
                                      )
                                    )
                                  ),

                                  Flexible(
                                    flex: 1, 
                                    child: Container(
                                      margin: const EdgeInsets.all(13.0),
                                      child: Image(image: AssetImage('logo.png')
                                      )
                                    )
                                  ),

                                  Flexible(
                                    flex: 1, 
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ShoppingPage()),
                                        );
                                      },
                                      child: Container(
                                          margin: const EdgeInsets.all(30.0),
                                          child: Image(image: AssetImage('shopping.png')
                                      )
                                    
                                      )
                                    )
                                  ),

                                ],
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),

                                width: double.infinity,
                                height: double.infinity,

                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green[700],
                                      shape: BoxShape.rectangle,
                                      borderRadius:BorderRadius.all(
                                          Radius.circular(25)
                                          ),

                                      gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end:
                                              Alignment(0.0, -1),

                                          colors: [Color.fromRGBO(0, 0, 0, 1), Color.fromRGBO(0, 0, 0, 0)]),
                        
                                  ),
       
                                  
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(17.0),
                                            child: Image(image: AssetImage('round_search_white_48dp.png')
                                            )
                                          ),

                                          Container(
                                            margin: const EdgeInsets.only(left: 2),

                                            child: Text(
                                              "Explore New Content",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                                color: Colors.white
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ),
                                
                              ),
                            )
                          ],
                        ),
                        
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50.0, top: 20.0),
              child: Text(
                "Categories",
                textAlign: TextAlign.left,
                style: new TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w100,
                  fontSize: 32,
                  color: Colors.white
                ),
              ),
            ),

            Flexible(
              flex: 5,
              child: Container(
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      for(var item in list )
                        Container(
                          margin: const EdgeInsets.only(left: 60.0, bottom: 0.0, right: 0.0, top: 30.0),
                          child: Container(
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        item[0],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          color: Colors.white
                                        ),
                                      ),
                                    ),             
                                  ),
                                ),
                                
                                Container(
                                  height: 180,
                                  
                                  margin: const EdgeInsets.only(left: 0.0, bottom: 20.0, right: 0.0, top: 40.0),

                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      width: 200.0,
                                      decoration: new BoxDecoration(

                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(5, 5), // changes position of shadow
                                          ),
                                        ],

                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: item[1]),
                                    
                                        shape: BoxShape.circle,
                                        image: DecorationImage(image: item[2])
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
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50.0, top: 10.0),
              child: Text(
                "Explore",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 32,
                  color: Colors.white
                ),
              ),
            ),

            Flexible(
              
              flex: 8,
              child: Container(
                width: double.infinity,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image(
                       image: AssetImage('priscilla-du-preez-7etIYqqw2jU-unsplash.jpg'),
                      fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.only(top:40, bottom: 40, left: 50, right: 50),
                ),
              )
            )
          ],
        )
      ),
    );
  }
}
