import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
            Text("FRASE ALEATÓRIA ENTRA AQUI",
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
