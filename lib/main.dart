//import 'dart:html';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'augmented.dart';
import 'browsing.dart';
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
                  0,
                  "Dinosaurs", 
                  [Color.fromRGBO(255, 185, 135, 1), Color.fromRGBO(255, 185, 135, 200)],
                  AssetImage("assets/dinosaur-3149580.png"),
                  Alignment(10.0, 0.0)
                ], 
                [ 1,
                  "Reptiles", 
                  [Color.fromRGBO(175, 233, 178, 1), Color.fromRGBO(175, 233, 178, 200)],
                  AssetImage("assets/lizard-3064164.png"),
                  Alignment(0.0, 1.0) 
                ],
                [
                  2,
                  "Minerals",
                  [Color.fromRGBO(255, 185, 135, 1), Color.fromRGBO(255, 185, 135, 200)],
                  AssetImage("assets/dinosaur-3149580.png"),
                  Alignment(0.0, 1.0) 
                ],
                [
                  3,
                  "Something",
                  [Color.fromRGBO(255, 185, 135, 1), Color.fromRGBO(255, 185, 135, 200)],
                  AssetImage("assets/dinosaur-3149580.png"),
                  Alignment(0.0, 1.0) 
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
                                      child: Image(image: AssetImage('assets/account.png')
                                      )
                                    )
                                  ),

                                  Flexible(
                                    flex: 1, 
                                    child: Container(
                                      margin: const EdgeInsets.all(13.0),
                                      child: Image(image: AssetImage('assets/logo.png')
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
                                          child: Image(image: AssetImage('assets/shopping.png')
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
                                            margin: const EdgeInsets.only(left:16.0, top: 13, bottom: 13),
                                            child: Image(image: AssetImage('assets/round_search_white_48dp.png')
                                            )
                                          ),

                                          Container(
                                            margin: const EdgeInsets.only(left: 14),

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
                          child: GestureDetector(
                            onTap: (){
                                if(item[0] == 0){
                                  /*Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => globalSetup(Customers('', '', '', '', 0, "", '','', ''), 'Add Customer' )),
                                  );*/
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
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          item[1],
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
                                              colors: item[2]),
                                      
                                          shape: BoxShape.circle,
                                          image: DecorationImage(image: item[3], fit: BoxFit.contain, alignment: item[4])
                                        ),
                                        
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                  margin: const EdgeInsets.only(bottom: 0.0, top: 40.0),
                  height: double.infinity,
                  child: IntrinsicHeight(child: InnerSwiper())
              )
            )
          ],
        )
      ),
    );
  } 
}

class MyStructure {
  final int id;
  final String text;
  final String directory;
  final IconData icon;

  MyStructure({this.id, this.text, this.icon, this.directory});
}

class InnerSwiper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _InnerSwiperState();
  }
}


class _InnerSwiperState extends State<InnerSwiper> {
  SwiperController controller;

  List<SwiperController> controllers;
  List<MyStructure> widgetList = [];

  @override
  void initState() {
    controller = new SwiperController();

    controllers = new List()
      ..length = 3
      ..fillRange(0, 3, new SwiperController());


    widgetList.add(MyStructure(id:0,text: 'New Customer', icon: Icons.add_circle, directory: 'assets/dinosaur-3149580.png'));
    widgetList.add(MyStructure(id:1,text: 'Something', icon: Icons.directions_bus, directory: 'assets/priscilla-du-preez-7etIYqqw2jU-unsplash.jpg'));
    widgetList.add(MyStructure(id:2,text: 'New Trip', icon: Icons.card_travel, directory: 'assets/dinosaur-3149580.png'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Swiper(
      loop: false,
      itemCount: widgetList.length,
      controller: controller,
      itemBuilder: (BuildContext context, int index) {
        return new Column(
          children: <Widget>[
            new SizedBox(
              child: new Swiper(
                physics: BouncingScrollPhysics(),
                controller: controllers[index],
                itemCount: widgetList.length,
                viewportFraction: 0.7,
                scale: 0.75,
                index: 1,
                loop: false,
                itemBuilder: (BuildContext context, int index) {
                  return MyWidget(widgetList[index]);
                },
              ),
              height: MediaQuery.of(context).size.height * 0.35,
            ),
          ],
        );
      },
    );
  }
}

class MyWidget extends StatelessWidget {
  final MyStructure widgetStructure;

  MyWidget(this.widgetStructure);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),

      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.rectangle,

            image: DecorationImage(image: AssetImage(this.widgetStructure.directory), fit: BoxFit.cover),
            borderRadius:BorderRadius.all(
                  Radius.circular(40)
            ),

        ),

        child: GestureDetector(
          onTap: (){
            if(widgetStructure.id == 0){
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => globalSetup(Customers('', '', '', '', 0, "", '','', ''), 'Add Customer' )),
              );*/
            } else if(widgetStructure.id == 1){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelloWorld()),
              );
            } else{
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewTrip(Trips(0, 0, 0, '', 0, 0), 'Add Trip' )),
              );*/
            }

          },

          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                   Container(
                      width: double.infinity,
                      height: 100,
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

                          borderRadius:BorderRadius.only(
                                          bottomLeft: Radius.circular(40),
                                          bottomRight: Radius.circular(40)
                                          ),

                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color.fromRGBO(0, 0, 0, 500), Color.fromRGBO(0, 0, 0, 1)]),
                                    
                      ),
                                      
                  ),
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
