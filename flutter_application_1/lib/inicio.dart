import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
void main() {
  runApp(Inicio());
}

class Inicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Inicio> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 8);
    return new Timer(duration, route);
    
  }

  route() {
    Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 243, 243),
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 255, 255, 255)),
                  Color.fromARGB(255, 255, 255, 255)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Image.asset('../assets/log.jpeg')
            ),
          )
        ],
      ),
    );
  }
}