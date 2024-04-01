import 'package:flutter/material.dart';
import 'lista_productos.dart';
import 'vista_previa.dart';

class ProductosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Productos',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_checkout, color: Colors.white,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VistaPreviaPedidoScreen()),);// Acción cuando se presiona el b
            },
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white,),
            onPressed: () {
              // Acción al presionar el botón de búsqueda
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app, color: Colors.white,),
            onPressed: () {
              // Acción al presionar el botón de filtro
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondofmapp.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20), // Espacio entre la parte superior de la pantalla y "Última actualización"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.access_time, color: const Color.fromARGB(255, 3, 54, 95),), // Icono para la hora de actualización
                  SizedBox(width: 5), // Espacio entre el icono y el texto
                  Text(
                    'Última actualización: ',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5), // Espacio entre "Última actualización" y "Para cliente"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.person, color: const Color.fromARGB(255, 3, 54, 95)), // Icono para cliente
                  SizedBox(width: 5), // Espacio entre el icono y el texto
                  Text(
                    'Para cliente:',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5), // Espacio entre "Para cliente" y "RIF"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.contact_page_rounded, color: const Color.fromARGB(255, 3, 54, 95)), // Icono para RIF
                  SizedBox(width: 5), // Espacio entre el icono y el texto
                  Text(
                    'RIF:',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const Divider( // Separador debajo de RIF
              color: const Color.fromARGB(255, 3, 54, 95),
              thickness: 1,
              height: 10,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 5), // Espacio entre el separador y "Seleccione productos"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag_rounded, color: const Color.fromARGB(255, 3, 54, 95)), // Icono para selección de productos
                  SizedBox(width: 5), // Espacio entre el icono y el texto
                  Text(
                    'Seleccione productos',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10), // Espacio entre "Seleccione productos" y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => SeleccionarProductosScreen()),
                    );},
                  child: Text('Productos', style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 3, 54, 95)),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón de papelera
                  },
                  child: Icon(Icons.delete, color: Colors.white),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 3, 54, 95)),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón de editar
                  },
                  child: Icon(Icons.edit, color: Colors.white),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 3, 54, 95)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5), // Espacio entre el separador y "Seleccione productos"
            const Divider( // Separador debajo de RIF
              color: const Color.fromARGB(255, 3, 54, 95),
              thickness: 1,
              height: 10,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 5), // Espacio entre el separador y "Seleccione productos"
          ],
        ),
      ),
    );
  }
}