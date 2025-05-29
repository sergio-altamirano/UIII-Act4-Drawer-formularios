import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Formularios Tablas"), 
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              accountName: Text("Sergio Altamirano 1041"),
               accountEmail: Text("a.22308051281041@cbtis128.edu.mx"),
               currentAccountPicture: GestureDetector(
                 child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 241, 175, 175),
                  child: Text(
                    "SA",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               ),
            )


          ],
        ),
      ),
    );
  }
}