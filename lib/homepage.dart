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
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
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
                  child: CircleAvatar(
                    radius: 130,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/sergio-altamirano/act1ioss/refs/heads/main/usuario.jpg',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/home");
                },
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Home"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/clientes");
                },
                leading: Icon(Icons.person, color: const Color.fromARGB(255, 30, 159, 233)),
                title: Text("Clientes"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/productos");
                },
                leading: Icon(
                  Icons.shop_2,
                  color: const Color.fromARGB(255, 45, 80, 133),
                ),
                title: Text("Productos"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
