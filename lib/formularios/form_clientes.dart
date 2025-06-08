import 'package:flutter/material.dart';
import 'package:myapp/formularios/details_cliente.dart';

class Clientes extends StatefulWidget {
  const Clientes({super.key});

  @override
  State<Clientes> createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  final _idClienteController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _fechaNacimientoController = TextEditingController();
  final _domicilioController = TextEditingController();
  final _curpController = TextEditingController();

  @override
  void dispose() {
    _idClienteController.dispose();
    _nombreController.dispose();
    _apellidoController.dispose();
    _telefonoController.dispose();
    _fechaNacimientoController.dispose();
    _domicilioController.dispose();
    _curpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text("Formulario Cliente"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idClienteController,
              fieldName: "ID Cliente",
              myIcon: Icons.credit_card,
              prefixIconColor: Colors.blueAccent,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
              myIcon: Icons.person,
              prefixIconColor: Colors.blueAccent,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _apellidoController,
              fieldName: "Apellido",
              myIcon: Icons.person_outline,
              prefixIconColor: Colors.blueAccent,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _telefonoController,
              fieldName: "Teléfono",
              myIcon: Icons.phone,
              prefixIconColor: Colors.blueAccent,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _fechaNacimientoController,
              fieldName: "Fecha de Nacimiento",
              myIcon: Icons.cake,
              prefixIconColor: Colors.blueAccent,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _domicilioController,
              fieldName: "Domicilio",
              myIcon: Icons.home,
              prefixIconColor: Colors.blueAccent,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _curpController,
              fieldName: "CURP",
              myIcon: Icons.badge,
              prefixIconColor: Colors.blueAccent,
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
          MaterialPageRoute(builder: (context) {
            return Details(
              idCliente: _idClienteController.text,
              nombre: _nombreController.text,
              apellido: _apellidoController.text,
              telefono: _telefonoController.text,
              fechaNacimiento: _fechaNacimientoController.text,
              domicilio: _domicilioController.text,
              curp: _curpController.text,
            );
          }),
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
