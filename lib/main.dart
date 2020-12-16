import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
import 'augmented.dart';
import 'browsing.dart';
import 'shopping.dart';
import 'information.dart';
import 'dart:html';
import 'package:audioplayer_web/audioplayer_web.dart';

import 'item.dart' as item;
import 'browsing.dart' as browsing;


void main() {
  runApp(MyApp());
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

var list = [
                [
                  0,
                  "Mammals", 
                  AssetImage("assets/bear_head.png"),
                  [Color.fromRGBO(175, 222, 233, 1), Color.fromRGBO(175, 222, 233, 200)],
                  Alignment(-5.0, 10.0)
                ], 
                [ 1,
                  "Reptiles", 
                  AssetImage("assets/lizard-3064164.png"),
                  [Color.fromRGBO(175, 233, 178, 1), Color.fromRGBO(175, 233, 178, 200)],
                  Alignment(0.0, 0.99) 
                ],
                [
                  2,
                  "Dinosaurs",
                  AssetImage("assets/dinosaur-3149580.png"),
                  [Color.fromRGBO(255, 185, 135, 1), Color.fromRGBO(255, 185, 135, 200)],
                  Alignment(0.0, 1.0) 
                ],
                [
                  2,
                  "Insects",
                  AssetImage("assets/dragonfly-3523034_1920.png"),
                  [Color.fromRGBO(255, 185, 240, 1), Color.fromRGBO(255, 185, 240, 200)],
                  Alignment(0.0, 0.0) 
                ],
             ]; 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 450,
        height: double.infinity,

        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(title: 'Natural History Digital'),
        ),
      ),
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

  var search_list = [];
  List current_list = [];

  final search_controller = new TextEditingController();

  AudioplayerPlugin audioPlugin = AudioplayerPlugin();

  @override
  initState() {
    super.initState();
    search_controller.addListener(onChange);
  }
  
  onChange(){
    setState((){});
    filterSearch();
  }

  createAlertDialog(BuildContext context){
    search_list.clear();
    search_list.addAll(item.list);
    search_list.addAll(browsing.browsing_items);
    search_list.addAll(list);

    return showDialog(context: context, builder: (context){
      return Container(
        margin: const EdgeInsets.only(left: 45, top: 110, right: 45, bottom: 200),
        child: Card(
          color: Color.fromRGBO(65, 65, 65, 1),
           elevation: 5,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  flex: 1,
                  child: GestureDetector(
                     onTap: (){ 
                         createAlertDialog(context);
                        },
                      
                      child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20, top: 26, bottom: 0),

                      width: double.infinity,
                      height: double.infinity,

                      child: Container(
                          decoration: BoxDecoration(
                                      
                             color: Color.fromRGBO(226, 106, 106, 100),
                             shape: BoxShape.rectangle,
                             boxShadow: [new BoxShadow(
                                color: Colors.black26,
                                   blurRadius: 10.0,
                                )
                              ],
                            borderRadius:BorderRadius.all(
                                 Radius.circular(25)
                            ),

                                        
                        
                          ),
                                    
                          child: Align(
                              alignment: Alignment.centerLeft,
                                  child: Row(
                                     children: [
                                            Flexible(
                                              flex: 1,
                                              child: Container(
                                                margin: const EdgeInsets.only(left:16.0, top: 13, bottom: 13),
                                                child: Image(image: AssetImage('assets/round_search_white_48dp.png')
                                                )
                                              ),
                                            ),

                                            Flexible(
                                              flex: 2,
                                                child: Container(
                                                margin: const EdgeInsets.only(left: 15, bottom: 13, top: 10),

                                                child: TextField(
                                                  obscureText: false,
                                                  cursorColor: Colors.white,
                                                  style: TextStyle(color: Colors.white),
                                                  

                                                  controller: search_controller,

                                                  decoration: new InputDecoration.collapsed(
                                                    
                                                    hintText: 'Explore New Content',
                                                    border: InputBorder.none,
                                                    hintStyle: TextStyle(
                                                      color: Colors.white
                                                    )
                                                    
                                                  ),
                                                  
                                                ),

                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ),
                                  
                                ),
                              ),
                            ),

            Flexible(
              flex: 4,  
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                    child: ListView(
                      padding: const EdgeInsets.only(top: 20),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                        children: <Widget>[
                          for(var item in search_list )
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
                                    height: 100,
                                    margin: const EdgeInsets.only(bottom: 15),
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
                                              width: 60,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(left: 20, right: 15),
                                            width: 140,
                                            child: Text(
                                              item[1],
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 13,
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
            ),

            ],
          ),
        ),
      );
    });
  }

  filterSearch(){
    List tmp = [];
    current_list.clear();

    String search = search_controller.text;

    if (search.isEmpty) {
      tmp.addAll(search_list);
    } else {
      tmp = search_list.where((x) =>
            x[1].toLowerCase().contains(search_controller.text.toLowerCase())).toList();
      print(tmp);
    }

    search_list = tmp;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(65, 65, 65, 1),
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 5,
              child: Container(

                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(top:40.0),
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      audioPlugin.currentUrl = "assets/hope_recording.m4a";
                                      audioPlugin.player.autoplay = true;
                                    },
                                     child: Flexible(
                                      flex: 1, 
                                      child: Container(
                                        margin: const EdgeInsets.all(30.0),
                                        child: Icon(
                                           Icons.volume_up_rounded,
                                           color: Colors.white,
                                           size: 40,
                                           
                                           
                                        )
                                      )
                                    ),
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
                                          child: Image(image: AssetImage('assets/baseline_local_mall_white_48dp.png')
                                      )
                                    
                                      )
                                    )
                                  ),

                                ],
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: GestureDetector(
                                onTap: (){ 
                                  createAlertDialog(context);
                                  },
                                child: Container(
                                  margin: const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),

                                  width: double.infinity,
                                  height: double.infinity,

                                  child: Container(
                                    decoration: BoxDecoration(
                                      
                                        color: Color.fromRGBO(226, 106, 106, 100),
                                        shape: BoxShape.rectangle,
                                        boxShadow: [new BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10.0,
                                          )
                                        ],
                                        borderRadius:BorderRadius.all(
                                            Radius.circular(25)
                                            ),

                                        
                        
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
              margin: const EdgeInsets.only(left: 40.0, top: 20.0),
              child: Text(
                "Categories",
                textAlign: TextAlign.left,
                style: new TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w100,
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
            ),

            Flexible(
              flex: 5,
              child: Container(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                    child: ListView(
                      padding: EdgeInsets.only(right: 35.0),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        for(var item in list )
                          Container(
                            margin: const EdgeInsets.only(left: 40.0, bottom: 0.0, right: 0.0, top: 30.0),
                            child: GestureDetector(
                              onTap: (){
                                  if(item[0] == 0){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => BrowsingPage()),
                                      );
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
                                                colors: item[3]),
                                        
                                            shape: BoxShape.circle,
                                            image: DecorationImage(image: item[2], fit: BoxFit.contain, alignment: item[4])
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
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 40.0, top: 13.0),
              child: Text(
                "Explore",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
            ),

            Flexible(
              
              flex: 8,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 0.0, top: 30.0),
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

class ShoppingStructure {
  final int id;
  final String text;
  final String directory;
  final IconData icon;
  final String title;
  final String description;

  ShoppingStructure({this.id, this.text, this.icon, this.directory, this.title, this.description});
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
  List<ShoppingStructure> widgetList = [];

  @override
  void initState() {
    controller = new SwiperController();

    controllers = new List()
      ..length = 3
      ..fillRange(0, 3, new SwiperController());


    widgetList.add(ShoppingStructure(id:0,text: 'New Customer', icon: Icons.info_rounded, directory: 'assets/andy-holmes-D6TqIa-tWRY-unsplash.jpg', title: "Learn More!", description: "Could giraffes become Extinct?"));
    widgetList.add(ShoppingStructure(id:1,text: 'Something', icon: Icons.center_focus_strong_rounded, directory: 'assets/kevin-mueller-1gUES9J7Ph8-unsplash.jpg', title: "Augmented Reality", description: "Experience nature and history with a modern twist!"));//, 
    widgetList.add(ShoppingStructure(id:2,text: 'New Trip', icon: Icons.local_mall_rounded, directory: 'assets/apes_main.jpg', title: "Remembering Great Apes", description: "Part of the Remembering Wildlife series"));

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
              height: MediaQuery.of(context).size.height * 0.34,
            ),
          ],
        );
      },
    );
  }
}

class MyWidget extends StatelessWidget {
  final ShoppingStructure widgetStructure;

  MyWidget(this.widgetStructure);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),

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
        child: Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.rectangle,
              
              border: Border.all(
                  width: 3,
                  color: Colors.white
              ),

              image: DecorationImage(image: AssetImage(this.widgetStructure.directory), fit: BoxFit.cover),
              borderRadius:BorderRadius.all(
                    Radius.circular(40)
              ),

          ),

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

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              this.widgetStructure.title,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            width: 200,
                            child: Text(
                              this.widgetStructure.description,
                              textAlign: TextAlign.start,
                              
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ],
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
