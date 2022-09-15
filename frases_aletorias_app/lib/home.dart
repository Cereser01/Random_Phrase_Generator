import 'package:flutter/material.dart';
import "dart:math";

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

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

  var _random = Random();
  var _previous;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text("Gerador de Frases Aletórias"),
          backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [

              Container(
                //Frase aleatória
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  listaFrases[_random.nextInt(listaFrases.length)],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  " '' " + listaAutores[_random.nextInt(listaAutores.length)] + " ''",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),

                ),

              ),


              Container(
                //Botão de mudar de frase
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _random = Random();
                    });
                  },
                  child: const Text("Nova frase"),
                ),
              ),

            ],
          )
        ),
      ),
    );
  }
}
