import 'package:flutter/material.dart';
import 'menu.dart';

class PedidoGeneradoDark extends StatelessWidget {
  final Color iconColor = const Color.fromARGB(255, 3, 54, 95); // Color del icono y fondo del AppBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: iconColor,
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),);// Acción cuando se presiona el botón de menú
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app, color: Colors.white),
            onPressed: () {
              // Acción cuando se presiona el botón de salir
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondofmapp.jpg'), // Fondo de la pantalla
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5), // Espacio entre el AppBar y el texto
              Text(
                'Pedido Generado',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10), // Espacio entre el texto y el icono
              Icon(Icons.check_circle_outline, size: 40, color: iconColor), // Icono de pedido generado
              SizedBox(height: 10), // Espacio entre el icono y los datos
              _buildDataItem("Código de Pedido", "123456"),
              _buildDataItem("Fecha de Pedido", "31/03/2024"),
              _buildDataItem("Cliente", "Cliente X"),
              _buildDataItem("RIF", "123456789"),
              _buildDataItem("Facturar en", "Dirección de facturación"),
              _buildDataItem("Condición de Pago", "Contado"),
              _buildDataItem("Número de Ítems", "10"),
              _buildDataItem("Total de Cajas", "5"),
              _buildDataItem("Kilos", "5"),
              const Divider( // Separador debajo de los datos de Kilos
                color: const Color.fromARGB(255, 3, 54, 95),
                thickness: 1,
                height: 10,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 20), // Espacio entre el separador y la barra de progreso
              LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(iconColor), // Cambiar el color de la barra de progreso
              ), // Barra de progreso
              SizedBox(height: 20), // Espacio entre la barra de progreso y el botón de la cámara
              ElevatedButton.icon(
                onPressed: () {
                  // Acción cuando se presiona el botón de la cámara
                },
                icon: Icon(Icons.camera_alt, color: Colors.white), // Icono de la cámara con texto blanco
                label: Text('Cargar imagen', style: TextStyle(color: Colors.white)), // Texto del botón con texto blanco
                style: ElevatedButton.styleFrom(
                  backgroundColor: iconColor, // Color de fondo del botón
                ),
              ),
              SizedBox(height: 5), // Espacio entre "Cliente seleccionado" y los textos adicionales

              const Divider( // Separador debajo de los datos de Kilos
                color: const Color.fromARGB(255, 3, 54, 95),
                thickness: 1,
                height: 10,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 5), // Espacio entre "Cliente seleccionado" y los textos adicionales
              Row( // Row para el icono y el texto "Cliente seleccionado"
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.production_quantity_limits, color: iconColor), // Icono al lado del texto con el color del icono del botón
                  SizedBox(width: 5), // Espacio entre el icono y el texto
                  Text(
                    'Productos Seleccionados',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10), // Espacio entre el texto "Productos Seleccionados" y la lista de productos
              Expanded( // Expande el espacio para la lista de productos
                child: ListView( // ListView para la lista de productos
                  children: [
                    _buildProductItem("Código", "Descripción", "Precio x Caja", "Total"),
                    _buildProductItem("001", "Producto 1", "\$19.58", "\$78.32"),
                    _buildProductItem("002", "Producto 2", "\$19.58", "\$78.32"),
                    _buildProductItem("003", "Producto 3", "\$19.58", "\$78.32"),
                    _buildProductItem("004", "Producto 4", "\$19.58", "\$78.32"),
                    _buildProductItem("005", "Producto 5", "\$19.58", "\$78.32"),
                    _buildProductItem("006", "Producto 6", "\$19.58", "\$78.32"),
                    _buildProductItem("007", "Producto 7", "\$19.58", "\$78.32"),
                    _buildProductItem("008", "Producto 8", "\$19.58", "\$78.32"),
                    _buildProductItem("009", "Producto 9", "\$19.58", "\$78.32"),
                    _buildProductItem("010", "Producto 10", "\$19.58", "\$78.32"),
                    _buildProductItem("011", "Producto 11", "\$19.58", "\$78.32"),
                    _buildProductItem("012", "Producto 12", "\$19.58", "\$78.32"),
                    _buildProductItem("013", "Producto 13", "\$19.58", "\$78.32"),
                    _buildProductItem("014", "Producto 14", "\$19.58", "\$78.32"),
                    _buildProductItem("015", "Producto 15", "\$19.58", "\$78.32"),
                  ],
                ),
              ),
              SizedBox(height: 10), // Espacio entre la lista de productos y los textos adicionales
              _buildTotalItem("Subtotal", "\$313.28"),
              _buildTotalItem("IVA", "\$18.80"),
              _buildTotalItem("Total a Pagar", "\$332.08"),
              _buildTotalItem("Total BS", "Bs. 1.321,93"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2, left: 20), // Agrega un espacio a la izquierda para la sangría
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label + ": ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(String code, String name, String pricePerBox, String total) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              code,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(name),
          ),
          Expanded(
            flex: 2,
            child: Text(pricePerBox),
          ),
          Expanded(
            flex: 2,
            child: Text(total),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

