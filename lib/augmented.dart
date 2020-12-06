import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  @override
  _HelloWorldState createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
   ArCoreController controller;

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

          Container(
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: 200,

            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,

                borderRadius:BorderRadius.all(
                      Radius.circular(40)
                ),
            )

          ),

          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,

                borderRadius:BorderRadius.all(
                      Radius.circular(40)
                ),
            )

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