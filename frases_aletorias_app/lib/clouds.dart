import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class Clouds extends StatelessWidget{
  const Clouds({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:

      Center(
        child: ListView(
          children: [
            Container(
              child: Image.asset("nightsky.jpg"),
            ),
          ],
        ),
      ),

    );

  }

}