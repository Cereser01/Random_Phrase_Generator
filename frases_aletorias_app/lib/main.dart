import 'package:flutter/material.dart';
import 'Home.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Gerador de Frases Aleatórias",
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    home: Home(),
  ));
}
