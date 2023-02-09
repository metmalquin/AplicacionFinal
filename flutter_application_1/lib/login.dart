import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/registro.dart';
import 'package:flutter_application_1/dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => login();
}

class login extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255),
                blurRadius: 25.0,
                spreadRadius: 5.0,
                offset: Offset(15.0, 15.0))
          ],
        ),
        margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('../assets/log.jpeg'),
              
              TextField(
                controller: email,
                decoration: InputDecoration(hintText: 'correo',  icon:Icon(Icons.email, color: Color.fromARGB(255, 214, 40, 205),), hintStyle:TextStyle(color: Colors.black), filled: true,fillColor: Color.fromARGB(255, 255, 255, 255),),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(hintText: 'contraseña', icon:Icon(Icons.password, color: Color.fromARGB(255, 210, 34, 226)), hintStyle:TextStyle(color: Colors.black), filled: true,fillColor: Color.fromARGB(255, 255, 255, 255),),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 228, 238),
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                    child: Text(
                      'Ingresar',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Dashboard()));
                    },
                    style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 189, 37, 219)),),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿No tienes cuenta?", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),),
                  Container(
                    child: TextButton(
                      child: Text("Crear Cuenta",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registro()));
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}