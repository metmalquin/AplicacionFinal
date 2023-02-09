import 'package:flutter/material.dart';
import 'BottomNavigation.dart';

class ItemDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  ItemDetail({this.assetPath, this.cookieprice, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 3, 3),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 158, 20, 223)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Fusión Glamour',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color.fromARGB(255, 224, 34, 199))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color.fromARGB(255, 188, 68, 224)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
          children: [
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                  'Detalles del producto',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 211, 47, 184))
              ),
            ),
            SizedBox(height: 15.0),
            Hero(
                tag: assetPath,
                child: Image.asset(assetPath,
                    height: 150.0,
                    width: 100.0,
                    fit: BoxFit.contain
                )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(cookieprice,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 211, 47, 184))),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(cookiename,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text('Producto especialmente hecho para el cuidado de tu rostro, para resaltar tu belleza y mejorar tu aspecto',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 16.0,
                        color: Color(0xFFB4B8B9))
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
                child: Container(
                    width: MediaQuery.of(context).size.width - 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromARGB(255, 211, 47, 189)
                    ),
                    child: Center(
                        child: Text('Comprar',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    )
                )
            )
          ]
      ),

      /*floatingActionButton: FloatingActionButton(onPressed: () {},
      backgroundColor: Color(0xFFF17532),
      child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CookingNavigator(),*/
    );
  }
}
