import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'item.dart';
import 'dart:html';

class HelloWorld extends StatefulWidget {
  @override
  _HelloWorldState createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
   ArCoreController controller;
   var currently_visible = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          ArCoreView(
            onArCoreViewCreated: _onArCoreViewCreated,
            enableTapRecognizer: true,
            enablePlaneRenderer: true,
          ),

          Visibility(
            visible: currently_visible,
            
            child: Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
              alignment: Alignment.topCenter,
              width: double.infinity,
              height: 150,

              decoration: BoxDecoration(
                  color: Color.fromRGBO(106, 154, 226, 10),
                  shape: BoxShape.rectangle,

                  borderRadius:BorderRadius.all(
                        Radius.circular(40)
                  ),

                  boxShadow: [
                                new BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                )
                              ],
              ),
              
              child: Row(

                  children: [
                     Flexible(
                       flex: 3,
                        child: Container(
                          margin: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                        
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                )
                              ],

                              image: DecorationImage(image: AssetImage("assets/1934-installation-blue-whale-baby-hero.jpg"), fit: BoxFit.fill),
                                
                              borderRadius:BorderRadius.all(
                                    Radius.circular(25)
                                ),  
                            ),
                         ),
                     ),
                     Flexible(
                       flex: 3,
                       child: Column(
                         children: [
                           Flexible(
                             flex: 4,
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10, top: 24),
                                  child: Text(
                                    "The secret history of Hope the blue whale...",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                           ),
                             
                            Flexible(
                             flex: 3,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ShoppingItem()),);
                                  },
                                 child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  margin: const EdgeInsets.only(top: 15, bottom: 12),
                                    decoration: BoxDecoration(
                                                
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10.0,
                                        )
                                      ],

                                      borderRadius:BorderRadius.all(
                                            Radius.circular(25)
                                        ),

                                        
                                    ),

                                    child: Align(
                                      alignment: Alignment.center,
                                       child: Text(
                                        "View Article",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                           fontFamily: 'Montserrat',
                                           fontSize: 16,
                                           fontWeight: FontWeight.w600,
                                           color: Color.fromRGBO(106, 154, 226, 1),
            
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
                       child: Column(
                         children: [
                             
                            Flexible(
                             flex: 2,
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                      currently_visible = false;  
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  margin: const EdgeInsets.only(left:20, top: 30, bottom: 18, right: 20),
                                    decoration: BoxDecoration(
                                                
                                      color: Color.fromRGBO(65, 65, 65, 1),
                                      shape: BoxShape.rectangle,
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10.0,
                                        )
                                      ],

                                      borderRadius:BorderRadius.all(
                                            Radius.circular(25)
                                        ),

                                        
                                    ),

                                    child: Align(
                                      alignment: Alignment.center,
                                       child: Icon(
                                         Icons.visibility_off,
                                         color: Colors.white,
                                       )
                                    ),
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

          GestureDetector(
                onTap: (){
                    Navigator.pop(context);
                },
                                                    
                child: Container(
                    height: 120,
                    width: 50,
                                                      
                    margin: const EdgeInsets.only(top: 14, left: 27, right: 20, bottom: 20),

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

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(left: 90, right: 90, bottom: 280),
              height: 80,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),

                child: Row(children: [
                   Flexible(
                       flex: 1,
                       child: Container(
                         margin: const EdgeInsets.only(left: 10, right: 20),
                         width: 50,
                        child: Icon(
                            Icons.info_outline_rounded,
                            color: Colors.black,
                            size: 40,
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 3,
                      child: Container(
                        margin: const EdgeInsets.only(right: 19),
                        child: Text(
                          "Touch the screen when white dots appear!"
                        )
                      ),
                    )

                ],)
              )
              
            ),
          ),

          Align(
              alignment: Alignment.bottomCenter,
                child: ARItemSwipe()
            ),
          

        ],
      ),
    );
  }

  _onArCoreViewCreated(ArCoreController localController) {
    controller = localController;
    controller.onPlaneTap = _onPlaneTap;
  }

  _onPlaneTap(List<ArCoreHitTestResult> hits) => _onHitDetected(hits.first);

  _onHitDetected(ArCoreHitTestResult plane) {
    controller.addArCoreNodeWithAnchor(
      ArCoreReferenceNode(
        name: "WhaleModel",
        object3DFileName: "WhaleModel.sfb",
        position: plane.pose.translation,
        rotation: plane.pose.rotation,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class MyStructure {
  final int id;
  final String text;
  final String directory;

  MyStructure({this.id, this.text, this.directory});
}

class ARItemSwipe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ARItemSwipeState();
  }
}


class _ARItemSwipeState extends State<ARItemSwipe> {
  SwiperController controller;

  List<SwiperController> controllers;
  List<MyStructure> widgetList = [];

  @override
  void initState() {
    controller = new SwiperController();

    controllers = new List()
      ..length = 3
      ..fillRange(0, 3, new SwiperController());


    widgetList.add(MyStructure(id:0,text: 'Chimpanzee Skull', directory: 'assets/isolated-1072466_1920.png'));
    widgetList.add(MyStructure(id:1,text: 'Blue Whale Skeleton', directory: 'assets/blue-whale-front-full-width.png'));
    widgetList.add(MyStructure(id:2,text: 'Dragonfly Model', directory: 'assets/dragonfly-3523034_1920.png'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      child: new Swiper(
        loop: false,
        itemCount: widgetList.length,
        controller: controller,
        
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            height: 45,
                child: new Swiper(
                  physics: BouncingScrollPhysics(),
                  controller: controllers[index],
                  itemCount: widgetList.length,
                  viewportFraction: 0.6,
                  scale: 0.5,
                  index: 1,
                  loop: false,
                  itemBuilder: (BuildContext context, int index) {
                    return MyWidget(widgetList[index]);
                  },
                ),
                
          );
        },
      ),
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
        margin: const EdgeInsets.only(bottom: 20, top: 20, left: 0, right: 0),
          decoration: BoxDecoration(                                  
             
             color: Color.fromRGBO(65, 65, 65, 200),
             shape: BoxShape.rectangle,
             boxShadow: [
                 new BoxShadow(
                     color: Color.fromRGBO(65, 65, 65, 60),
                     blurRadius: 10.0,
                 )
             ],

             borderRadius:BorderRadius.all(
                   Radius.circular(30)
             ),

              border: Border.all(
                color: Colors.white,
                width: 8,
              ),

                                      
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(this.widgetStructure.directory),
                height: 110,
              ),

              Container(
                margin: const EdgeInsets.only(left: 50, right: 50, top: 15),
                child: Text(
                  
                  this.widgetStructure.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                  ),
              ),
              ),
            ],
          ),
    ),
   );
  }
}