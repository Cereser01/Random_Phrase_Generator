import 'package:flutter/material.dart';
import "dart:math";

class Home extends StatelessWidget {

  final List<String> listaFrases = [
    "Frase1",
    "Frase2",
    "Frase3",
    "Frase4",
    "Frase5",
    "Frase6",
    "Frase7"
  ];

  final List<String> listaAutores = [
    "Autor1",
    "Autor2"
  ];

  final _random = new Random();

  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Gerador de Frases Aletórias"),
          backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 200, 20, 10)
            ),
            Text(listaFrases[_random.nextInt(listaFrases.length)],
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
