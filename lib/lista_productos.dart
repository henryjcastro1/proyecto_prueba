import 'package:flutter/material.dart';
import 'cantidad_de_producto.dart';

class SeleccionarProductosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seleccionar producto',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondofmapp.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Buscar Producto',
                  prefixIcon: Icon(Icons.search, color: const Color.fromARGB(255, 3, 54, 95)), // Color del ícono de búsqueda
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 3, 54, 95)), // Color del borde
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 3, 54, 95)), // Color del borde cuando está habilitado
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 3, 54, 95)), // Color del borde cuando está enfocado
                  ),
                ),
                style: TextStyle(color: Colors.black), // Color del texto
                onChanged: (value) {
                  // Acción al cambiar el texto del campo de búsqueda
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Número deseado de productos
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navegar a la pantalla de detalles del producto
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetalleProductoScreen(productName: 'Producto ${index + 1}')),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/producto.jpeg', // Ruta de la imagen del producto
                              fit: BoxFit.cover, // Ajustar la imagen al contenedor
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nombre del producto ${index + 1}', // Nombre del producto
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Código: 12345'), // Código del producto
                              Text('Tipo de unidad: Bulto'), // Tipo de unidad
                              Text('Precio: \$10.00'), // Precio del producto
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



