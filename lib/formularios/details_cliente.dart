import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String idCliente;
  final String nombre;
  final String apellido;
  final String telefono;
  final String fechaNacimiento;
  final String domicilio;
  final String curp;

  const Details({
    Key? key,
    required this.idCliente,
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.fechaNacimiento,
    required this.domicilio,
    required this.curp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text("Detalles del Cliente"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            ClienteCard(
              id: idCliente,
              nombre: nombre,
              apellido: apellido,
              telefono: telefono,
              fechaNacimiento: fechaNacimiento,
              domicilio: domicilio,
              curp: curp,
              icon: Icons.person_outline,
              iconColor: Colors.blue,
            ),

            const SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}

class ClienteCard extends StatelessWidget {
  final String id;
  final String nombre;
  final String apellido;
  final String telefono;
  final String fechaNacimiento;
  final String domicilio;
  final String curp;
  final IconData icon;
  final Color iconColor;

  const ClienteCard({
    Key? key,
    required this.id,
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.fechaNacimiento,
    required this.domicilio,
    required this.curp,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: iconColor.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: iconColor),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "ID Cliente: $id",
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text("Nombre: $nombre $apellido"),
            Text("Teléfono: $telefono"),
            Text("Fecha de Nacimiento: $fechaNacimiento"),
            Text("Domicilio: $domicilio"),
            Text("CURP: $curp"),
          ],
        ),
      ),
    );
  }
}
