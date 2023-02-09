import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/dashboard.dart';

class Registro extends StatefulWidget {
 @override
 State<Registro> createState() => Register();
}

class Register extends State<Registro> {
 GlobalKey<FormState> keyForm = new GlobalKey();
 TextEditingController  nameCtrl = new TextEditingController();
 TextEditingController  emailCtrl = new TextEditingController();
 TextEditingController  passwordCtrl = new TextEditingController();
 TextEditingController  repeatPassCtrl = new TextEditingController();

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: new Scaffold(
       backgroundColor: Colors.black,
       appBar: new AppBar(
         title: new Text('Registrarse'),
         backgroundColor: Color.fromARGB(255, 247, 2, 2),
       ),
       body: new SingleChildScrollView(
         child: new Container(
           margin: new EdgeInsets.all(60.0),
           child: new Form(
             key: keyForm,
             child: formUI(),
           ),
         ),
       ),
     ),
   );
 }

 formItemsDesign(icon, item) {
   return Padding(
     padding: EdgeInsets.symmetric(vertical: 7),
     child: Card(child: ListTile(leading: Icon(icon), title: item)),
   );
 }

 Widget formUI() {
   return  Column(
     children: <Widget>[
       formItemsDesign(
           Icons.person,
           TextFormField(
             controller: nameCtrl,
             decoration: new InputDecoration(
               labelText: 'Nombre',
             ),
             validator: (value)=>validateName(value!),
           )),
       formItemsDesign(
           Icons.email,
           TextFormField(
             controller: emailCtrl,
               decoration: new InputDecoration(
                 labelText: 'Email',
               ),
               keyboardType: TextInputType.emailAddress,
               validator: (value)=> validateEmail(value!),)),
       formItemsDesign(
           Icons.remove_red_eye,
           TextFormField(
             controller: passwordCtrl,
             obscureText: true,
             decoration: InputDecoration(
               labelText: 'Contraseña',
             ),
           )),
       formItemsDesign(
           Icons.remove_red_eye,
           TextFormField(
             controller: repeatPassCtrl,
             obscureText: true,
             decoration: InputDecoration(
               labelText: 'Repetir la Contraseña',
             ),
             validator: (value) => validatePassword(value!),
           )),
   GestureDetector(
   onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => Dashboard()));
     save();
   },child: Container(
         margin: new EdgeInsets.all(30.0),
         alignment: Alignment.center,
         decoration: ShapeDecoration(
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0)),
           gradient: LinearGradient(colors: [
             Color.fromARGB(255, 252, 2, 2),
             Color.fromARGB(255, 247, 1, 1),
           ],
               begin: Alignment.topLeft, end: Alignment.bottomRight),
         ),
         child: Text("Guardar",
             style: TextStyle(
                 color: Colors.white,
                 fontSize: 18,
                 fontWeight: FontWeight.w500)),
         padding: EdgeInsets.only(top: 16, bottom: 16),
       ))
     ],
   );
 }


String? validatePassword(String value) {
   print("valorrr $value passsword ${passwordCtrl.text}");
   if (value != passwordCtrl.text) {
     return "Las contraseñas no coinciden";
   }
   return null;
 }
 

 String? validateName(String value) {
   String pattern = r'(^[a-zA-Z ]*$)';
   RegExp regExp = new RegExp(pattern);
   if (value.length == 0) {
     return "El nombre es necesario";
   } else if (!regExp.hasMatch(value)) {
     return "El nombre debe de ser a-z y A-Z";
   }
   return null;
 }

 String? validateMobile(String value) {
   String patttern = r'(^[0-9]*$)';
   RegExp regExp = new RegExp(patttern);
   if (value.length == 0) {
     return "El telefono es necesariod";
   } else if (value.length != 10) {
     return "El numero debe tener 10 digitos";
   }
   return null;
 }

 String? validateEmail(String value) {
   String pattern =
       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
   RegExp regExp = new RegExp(pattern);
   if (value.length == 0) {
     return "El correo es necesario";
   } else if (!regExp.hasMatch(value)) {
     return "Correo invalido";
   } else {
     return null;
   }
 }

 save() {
   if (keyForm.currentState!.validate()) {
     print("Nombre ${nameCtrl.text}");
     print("Correo ${emailCtrl.text}");
         keyForm.currentState!.reset();
   }
 }
}