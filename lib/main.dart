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
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(65, 65, 65, 1),
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                // margin: const EdgeInsets.only(top:9.0),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1, 
                      child: Container(
                        margin: const EdgeInsets.all(19.0),
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
                            margin: const EdgeInsets.all(19.0),
                            child: Image(image: AssetImage('shopping.png')
                        )
                      
                        )
                      )
                    ),

                  ],
                ),
              ),
            ),

            Flexible(
              flex: 3,
              child: Container(
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          width: 200.0,
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(196, 196, 196, 1),
                            borderRadius: new BorderRadius.all(
                              const Radius.circular(40.0),
                            )
                          ),
                          margin: const EdgeInsets.only(left: 40.0, top: 40.0, bottom: 0.0, right: 10.0),
                        ),
                      ),
                      
                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          width: 200.0,
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(196, 196, 196, 1),
                            borderRadius: new BorderRadius.all(
                              const Radius.circular(40.0),
                            )
                          ),
                          margin: const EdgeInsets.only(left: 40.0, top: 40.0, bottom: 0.0, right: 10.0),
                        ),
                      ),

                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          width: 200.0,
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(196, 196, 196, 1),
                            borderRadius: new BorderRadius.all(
                              const Radius.circular(40.0),
                            )
                          ),
                          
                          margin: const EdgeInsets.only(left: 40.0, top: 40.0, bottom: 0.0, right: 10.0),
                        ),
                      ),

                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          width: 200.0,
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(196, 196, 196, 1),
                            borderRadius: new BorderRadius.all(
                              const Radius.circular(40.0),
                            )
                          ),
                          
                          margin: const EdgeInsets.only(left: 40.0, top: 40.0, bottom: 0.0, right: 10.0),
                        ),
                      ),

                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          width: 200.0,
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(196, 196, 196, 1),
                            borderRadius: new BorderRadius.all(
                              const Radius.circular(40.0),
                            )
                          ),
                          
                          margin: const EdgeInsets.only(left: 40.0, top: 40.0, bottom: 0.0, right: 10.0),
                        ),
                      ),

                    ],
                  ),
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50.0, top: 50.0),
              child: Text(
                "Explore",
                textAlign: TextAlign.left,
                style: TextStyle(
                  
                  fontSize: 30,
                  fontWeight: FontWeight.bold, 
                  color: Colors.white
                ),
              ),
            ),

            Flexible(
              
              flex: 5,
              child: Container(
                
                width: double.infinity,
                decoration: new BoxDecoration(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  borderRadius: new BorderRadius.all(
                    const Radius.circular(40.0),
                  )
                ),
                margin: const EdgeInsets.all(40.0),  
              )
            )
          ],
        )
      ),
    );
  }
}
