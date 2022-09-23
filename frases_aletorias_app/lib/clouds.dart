import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class Clouds extends StatelessWidget{
  const Clouds({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("nightsky.jpg"), fit: BoxFit.cover),
        ),
        ),

    );

  }

}