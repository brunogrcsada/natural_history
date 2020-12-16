import 'package:flutter/material.dart';
import 'item.dart';
import 'dart:html';

class ShoppingPage extends StatefulWidget {
  ShoppingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

var list = [
            [
              0,
              "Hope: The story of the blue whale",
              AssetImage("assets/9780565094775-hope_1.jpg"),
              Alignment(0.0, 0.0),
              "Hope is the new icon of the Natural History Museum, a stunning 9,000 pound, 82-foot-long blue whale skeleton. Suspended by steel wires and captured in a majestic swooping posture, her reconstruction is a work of art as well as a feat of engineering. Her story begins in 1891 when she was found beached off the coast of Ireland. A lucrative find for a local fisherman, her skeletal remains were sold to the Museum. The project to restore her took three years to complete, including 10 months of painstaking laboratory work to clean and repair each of her 221 bones. Combining the latest scientific research into the blue whale with behind-the-scenes imagery, this book sheds new light on the largest creature ever to have lived on Earth.",
              "£5.00"
            ], 
            [ 
              1,
              "Whales: Their Past, Present...", 
              AssetImage("assets/9780565094126-whales-a-complete-guide-to-their-biology-and-behaviour-1.jpg"),
              Alignment(0.0, 1.0),
              "The Museum book that complements Whales: Beneath the Surface exhibition. Philip Hammond and co-authors dive into the underwater world of the Earth’s largest mammals in this informative guide, drawing on current information and recent discoveries to give the reader a comprehensive overview of these spectacular marine species. This book investigates the ways that scientists monitor the current threats to whales, and the methods they use for conserving their future. Accompanied by images of important cetacean specimens and spectacular photographs, Whales also explains the lifecycle, evolution, diversity and distribution of these majestic ocean giants. This remarkable book is a rare beast – packing a blue whale-sized amount of information into a porpoise-compact volume. The authors, all researchers at the highly regarded Sea Mammal Research Unit at University of St Andrews, really know their stuff, and it shows in coverage of a wide range of aspects of whale evolution, ecology and, most fascinating of all, whale culture. In addition, Whales does not flinch from exploring our, at times, shameful relationship with these compelling animals and the seas and rivers in which they live. BBC Wildlife",
              "£14.99"
            ],
            [
              2,
              "Mini blue whale soft toy ",
              AssetImage("assets/bluew.jpg"),
              Alignment(0.0, 1.0),
              "At nearly 200 tonnes, the blue whale eats up to 40 million krill a day and is the largest known animal ever to have lived. Become a budding marine biologist with this cute and cuddly mini blue whale soft toy.",
              "£5.00"
            ],
            [
              3,
              "Blue whale soft toy",
              AssetImage("assets/a22396-plush-blue-whale-wbts-3.jpg"),
              Alignment(0.0, 1.0),
              "At nearly 200 tonnes, the blue whale eats up to 40 million krill a day and is the largest known animal ever to have lived. Bring home this cute and cuddly mini version, the ideal educational toy for budding marine biologists of all ages.",
              "£18.00"
            ],
            [
              4,
              "Remembering Great Apes",
              AssetImage("assets/apes.jpg"),
              Alignment(0.0, 1.0),
              "The third book in the highly acclaimed Remembering Wildlife series.",
              "£35.00"
            ],
           ];

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
  
}

class _ShoppingPageState extends State<ShoppingPage> {
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(65, 65, 65, 1),
      body: Center( 
        child: Column( 
          children: [
            Flexible(
                flex: 1,
                child: Container(

                  child: Column(
                    children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(top:40.0),
                          child: Column(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 1, 
                                      child: GestureDetector(
                                        onTap: (){
                                            Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 120,
                                          width: 50,
                                          
                                          margin: const EdgeInsets.only(left: 50.0, bottom: 0.0, right: 0.0, top: 0.0),

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

                                    Flexible(
                                      flex: 1, 
                                      child: Container(

                                        margin: const EdgeInsets.only(top: 0, right: 0, left: 70),
                                        child: Text(
                                          "SHOP",

                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                          ),
                                        )
                                      )
                                    ),

                                    Container(
                                      child: Image(
                                        image: AssetImage("assets/baseline_local_mall_white_48dp.png"),
                                        width: 90,
                                        height: 50,
                                      ),
                                    )

                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 20),

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
                                                "Search for the Perfect Gift",
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

              Flexible(
                flex: 2,
                child: Flexible(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(left: 30, right: 30, bottom: 0, top: 20),
                    child: ScrollConfiguration(
                      behavior: MyBehavior(),
                        child: ListView(
                          physics: BouncingScrollPhysics(),

                          scrollDirection: Axis.vertical,
                            children: <Widget>[
                              for(var item in list )
                                Container(
                                  child: GestureDetector(
                                      onTap: (){
                                          if(item[0] == 0){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => ShoppingItem()),);
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
                                      margin: const EdgeInsets.only(bottom: 20),
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
                                              margin: const EdgeInsets.only(top: 30),
                                              child: Column(
                                                children: [
                                                  Container(
                                                      margin: const EdgeInsets.only(left: 25),
                                                      width: 140,
                                                      child: Text(
                                                        item[1],
                                                        textAlign: TextAlign.start,
                                                        style: TextStyle(
                                                            fontFamily: 'Montserrat',
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600
                                                        ),
                                                    ),
                                                  ),

                                                  Container(
                                                      margin: const EdgeInsets.only(left: 25, top: 10),
                                                      width: 140,
                                                      child: Text(
                                                        item[5],
                                                        textAlign: TextAlign.start,
                                                        style: TextStyle(
                                                            fontFamily: 'Montserrat',
                                                            fontSize: 14,
                                                            color: Colors.black
                                                        ),
                                                    ),
                                                  ),
                                                ],
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
        ),
      )
    );
  }
}

