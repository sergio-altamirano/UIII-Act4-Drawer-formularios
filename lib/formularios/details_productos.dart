import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String idProducto;
  final String nombre;
  final String precio;
  final String cantidad;
  final String idIngrediente;
  final String idSucursal;
  final String categoria;

  const ProductDetails({
    Key? key,
    required this.idProducto,
    required this.nombre,
    required this.precio,
    required this.cantidad,
    required this.idIngrediente,
    required this.idSucursal,
    required this.categoria,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: const Text("Detalles del Producto"),
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
            ProductCard(
              id: idProducto,
              nombre: nombre,
              precio: precio,
              cantidad: cantidad,
              idIngrediente: idIngrediente,
              idSucursal: idSucursal,
              categoria: categoria,
              icon: Icons.inventory_2_rounded,
              iconColor: Colors.blue,
              onDelete: () {
                // Lógica para eliminar el producto (opcional)
              },
            ),

            
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String id;
  final String nombre;
  final String precio;
  final String cantidad;
  final String idIngrediente;
  final String idSucursal;
  final String categoria;
  final IconData icon;
  final Color iconColor;
  final VoidCallback? onDelete;

  const ProductCard({
    Key? key,
    required this.id,
    required this.nombre,
    required this.precio,
    required this.cantidad,
    required this.idIngrediente,
    required this.idSucursal,
    required this.categoria,
    required this.icon,
    required this.iconColor,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: iconColor.withOpacity(0.4)),
        borderRadius: BorderRadius.circular(8),
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
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "ID Producto: $id",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                if (onDelete != null)
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.redAccent),
                    onPressed: onDelete,
                  ),
              ],
            ),
            const SizedBox(height: 6),
            Text("Nombre: $nombre"),
            Text("Precio: \$${precio}"),
            Text("Cantidad: $cantidad"),
            Text("ID Ingrediente: $idIngrediente"),
            Text("ID Sucursal: $idSucursal"),
            Text("Categoría: $categoria"),
          ],
        ),
      ),
    );
  }
}
