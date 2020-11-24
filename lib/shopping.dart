import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  ShoppingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Shopping"),
      ),
      body: new Text(
            "meep"
      )
    );
  }
}

