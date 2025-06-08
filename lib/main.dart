import 'package:flutter/material.dart';
import 'package:myapp/formularios/form_clientes.dart';
import 'package:myapp/formularios/form_productos.dart';


import 'package:myapp/homepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home" : (context) => HomePage(),
        "/productos" : (context) => Productos(),
        "/clientes" : (context) => Clientes(),
      }
    );
  }
}
