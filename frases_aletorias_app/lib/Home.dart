import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Home"),
          backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10)
            ),
            Text("Login:",
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: TextField(

              ) ,
            ),


          ],
        ),
      ),
    );
  }
}
