import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Gerador de Frases Aleatórias",
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    home: const Home(),
  ));
}
