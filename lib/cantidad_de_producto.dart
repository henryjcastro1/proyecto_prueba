import 'package:flutter/material.dart';
import 'productos.dart';

class DetalleProductoScreen extends StatelessWidget {
  final String productName;

  DetalleProductoScreen({required this.productName});
  Color iconColor = const Color.fromARGB(255, 3, 54, 95); // Color del icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cantidad del Producto',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fondofmapp.jpg'), // Fondo de la pantalla
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider( // Separador arriba del código
                color: const Color.fromARGB(255, 3, 54, 95),
                thickness: 1,
                height: 10,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Código: 12345', // Código del producto (ejemplo)
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Nombre del Producto: $productName', // Nombre del producto
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Stock: 100', // Stock del producto (ejemplo)
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Precio sin IVA: \$10.00', // Precio sin IVA del producto (ejemplo)
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Precio con IVA: \$11.50', // Precio con IVA del producto (ejemplo)
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ver Imagen'), // Texto para "Ver Imagen"
                        Icon(Icons.image, color: iconColor), // Icono para "Ver Imagen"
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Histórico de Ventas'), // Texto para "Histórico de Ventas"
                        Icon(Icons.history, color: iconColor), // Icono para "Histórico de Ventas"
                      ],
                    ),
                    SizedBox(height: 5), // Espacio entre el texto y el separador
                    const Divider( // Separador arriba del código
                      color: const Color.fromARGB(255, 3, 54, 95),
                      thickness: 1,
                      height: 10,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(height: 5), // Espacio entre el separador y el Row
                    Row( // Row para el icono y el texto "Saldo del cliente"
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.production_quantity_limits, color: iconColor), // Icono al lado del texto con el color del icono del botón
                        SizedBox(width: 5), // Espacio entre el icono y el texto
                        Text(
                          'Cantidad del producto',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Espacio entre "Cantidad de producto" y "Unidad de venta"
                    Row( // Row para el texto "Unidad de venta"
                      children: [
                        Text(
                          'Unidad de venta:', // Texto para "Unidad de venta"
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Espacio entre "Cantidad de producto" y "Unidad de venta"
                    Row(
                      children: [
                        Text(
                          'Cantidad:',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 10), // Espacio entre el texto y el campo de texto
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Ajusta el espacio dentro del borde
                            ),
                            keyboardType: TextInputType.number, // Teclado numérico para la entrada de cantidad
                            // Puedes agregar más propiedades según tus necesidades, como controladores de texto, validadores, etc.
                          ),
                        ),
                        SizedBox(width: 200), // Espacio entre el texto y el campo de texto
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Ingrese la Observación',
                              border: UnderlineInputBorder(), // Utiliza UnderlineInputBorder para solo una línea debajo
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                            keyboardType: TextInputType.text, // Cambiado a TextInputType.text
                            maxLines: null, // Para hacerlo más amplio, se establece maxLines en null
                            // Puedes agregar más propiedades según tus necesidades, como controladores de texto, validadores, etc.
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), // Espacio entre el texto y el separador
                    const Divider( // Separador arriba del código
                      color: const Color.fromARGB(255, 3, 54, 95),
                      thickness: 1,
                      height: 10,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProductosScreen()),);// Acción cuando se presiona el botón "Cancelar"
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: iconColor, // Establece el color de fondo del botón como iconColor
                          ),
                          child: Text(
                            'Cancelar',
                            style: TextStyle(
                              color: Colors.white, // Establece el color del texto como blanco
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProductosScreen()),);// Acción cuando se presiona el botón "Cancelar"
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: iconColor, // Establece el color de fondo del botón como iconColor
                          ),
                          child: Text(
                            'Agregar',
                            style: TextStyle(
                              color: Colors.white, // Establece el color del texto como blanco
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
