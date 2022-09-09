import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exercício Aula 6",
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    home: Home(),

  ));
}

