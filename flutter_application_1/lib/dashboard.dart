import 'package:flutter/material.dart';
import 'BottomNavigation.dart';
import 'ItemsList.dart';


class Dashboard extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Dashboard> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // ignore: unnecessary_new
      home: new Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 5, 5, 5),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Color.fromARGB(115, 235, 64, 183),),
            onPressed: (){},
          ),
          centerTitle: true,
          title: Text("Fusión Glamour",style: TextStyle(color: Color.fromARGB(255, 219, 52, 219),fontFamily: "Varela",fontSize: 20),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_none,color: Color.fromARGB(255, 228, 82, 196),),
              onPressed: (){},
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 150,
              color: Color.fromARGB(255, 255, 255, 255),
              child: ListView(
                padding: EdgeInsets.only(left: 20),
                children: <Widget>[
                  SizedBox(height: 20,),
                  Text("Consiente tu rostro",style: TextStyle(fontFamily: "RobotoMono",fontSize: 42),),
                  SizedBox(height: 20,),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Color.fromARGB(255, 238, 236, 236),
                    isScrollable: true,
                    labelColor: Color.fromARGB(255, 196, 58, 184),
                    unselectedLabelColor: Color.fromARGB(255, 121, 13, 163),
                    labelPadding: EdgeInsets.only(right: 45),
                    tabs: <Widget>[
                      Tab(
                        child: Text("Malquillajes",style: TextStyle(fontFamily: "etceteratype.co/anybody",fontSize: 21),),
                      ),
                      Tab(
                        child: Text("Lo mas destacado",style: TextStyle(fontFamily: "etceteratype.co/anybody",fontSize: 21),),
                      )
                    ],
                  )
                ],
              ),
            )
            ,Container(
              width: double.infinity,
              height: 290,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    ItemsList(),
                    ItemsList(),
                    ItemsList(),
                  ]),
            )
            ,//CookieItems(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Color.fromARGB(255, 211, 54, 164),//olor(0xFFf17422),
          
        ),
        floatingActionButtonLocation:  FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CookingNavigator(),
      ),
    );
  }
}

class CookiesMasters extends StatefulWidget {
  @override
  _CookiesMastersState createState() => _CookiesMastersState();
}

class _CookiesMastersState extends State<CookiesMasters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 209, 73, 209),
    );
  }
}