import 'package:flutter/material.dart';
import 'package:myapp/formularios/details_productos.dart';

class Productos extends StatefulWidget {
  const Productos({super.key});

  @override
  State<Productos> createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  final _idProductoController = TextEditingController();
  final _nombreController = TextEditingController();
  final _precioController = TextEditingController();
  final _cantidadController = TextEditingController();
  final _idIngredienteController = TextEditingController();
  final _idSucursalController = TextEditingController();
  final _categoriaController = TextEditingController();

  @override
  void dispose() {
    _idProductoController.dispose();
    _nombreController.dispose();
    _precioController.dispose();
    _cantidadController.dispose();
    _idIngredienteController.dispose();
    _idSucursalController.dispose();
    _categoriaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text("Formulario Productos"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idProductoController,
              fieldName: "ID Producto",
              myIcon: Icons.qr_code_2,
              prefixIconColor: Colors.blue.shade400,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
              myIcon: Icons.label,
              prefixIconColor: Colors.blue.shade400,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _precioController,
              fieldName: "Precio",
              myIcon: Icons.monetization_on,
              prefixIconColor: Colors.blue.shade400,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _cantidadController,
              fieldName: "Cantidad",
              myIcon: Icons.numbers,
              prefixIconColor: Colors.blue.shade400,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _idIngredienteController,
              fieldName: "ID Ingrediente",
              myIcon: Icons.bubble_chart,
              prefixIconColor: Colors.blue.shade400,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _idSucursalController,
              fieldName: "ID Sucursal",
              myIcon: Icons.store,
              prefixIconColor: Colors.blue.shade400,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _categoriaController,
              fieldName: "Categoría",
              myIcon: Icons.category,
              prefixIconColor: Colors.blue.shade400,
            ),
            const SizedBox(height: 20.0),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
        side: const BorderSide(color: Colors.blue),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(
              idProducto: _idProductoController.text,
              nombre: _nombreController.text,
              precio: _precioController.text,
              cantidad: _cantidadController.text,
              idIngrediente: _idIngredienteController.text,
              idSucursal: _idSucursalController.text,
              categoria: _categoriaController.text,
            ),
          ),
        );
      },
      child: Text(
        "Enviar Formulario".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        labelStyle: const TextStyle(color: Colors.blue),
      ),
    );
  }
}
